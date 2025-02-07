class StripeController < ApplicationController
  before_action :require_login, only: %i[customer_portal redirect_to_payment]
  skip_before_action :verify_authenticity_token, only: [:webhook]
  no_authorization_required! :webhook, :customer_portal, :redirect_to_payment
  skip_before_action :check_if_login_required, only: [:webhook]
  skip_before_action :require_subscription

  def webhook
    payload = request.body.read
    sig_header = request.env['HTTP_STRIPE_SIGNATURE']
    endpoint_secret = Rails.application.credentials.dig(:stripe, :webhook_secret)
    event = nil

    # Verify this came from Stripe
    begin
      event = Stripe::Webhook.construct_event(
        payload, sig_header, endpoint_secret
      )
    rescue JSON::ParserError => e
      # Invalid payload
      render json: { error: 'Invalid payload' }, status: 400
      return
    rescue Stripe::SignatureVerificationError => e
      # Invalid signature
      render json: { error: 'Invalid signature' }, status: 400
      return
    end

    # Handle the event
    case event.type
    when 'invoice.payment_succeeded'
      invoice = event.data.object
      handle_invoice_payment_succeeded(invoice)
    when 'invoice.payment_failed'
      invoice = event.data.object
      handle_invoice_payment_failed(invoice)
    when 'customer.subscription.updated'
      subscription = event.data.object
      handle_subscription_updated(subscription)
    when 'customer.subscription.deleted'
      subscription = event.data.object
      handle_subscription_deleted(subscription)
    end

    render json: { success: true }, status: 200
  end

  def customer_portal
    user = User.find_by(mail: params[:email])
    stripe_customer_id = user.custom_field_value("Stripe Customer ID") if user
    customer = Stripe::Customer.retrieve(stripe_customer_id) if stripe_customer_id.present?
    subscriptions = Stripe::Subscription.list(customer: stripe_customer_id) if stripe_customer_id.present?

    if user && stripe_customer_id && !customer&.deleted? && subscriptions&.data&.any?
      session = Stripe::BillingPortal::Session.create({
        customer: stripe_customer_id,
        return_url: my_subscription_url
      })
      redirect_to session.url, allow_other_host: true
    else
      redirect_back fallback_location: my_subscription_path, alert: 'Customer not found'
    end
  end  

  def redirect_to_payment
    if params[:link].present?
      link = Rails.application.credentials.dig(:payment_links, params[:link])
      payment_link = "#{link}?prefilled_email=#{current_user.mail}"
      redirect_to payment_link, allow_other_host: true
    else
      redirect_back fallback_location: my_subscription_path, alert: 'Payment link not found'  
    end
  end

  private

  def handle_invoice_payment_succeeded(invoice)
    Rails.logger.info "******Payment succeeded for invoice: #{invoice.id}"
    user = User.find_by(mail: invoice.customer_email)
    subscription = Stripe::Subscription.retrieve(invoice.subscription)
    stripe_customer_id = invoice.customer
    data = subscription.items.data[0]
    start_date = Time.at(subscription.current_period_start).strftime('%Y-%m-%d')
    end_date = Time.at(subscription.current_period_end).strftime('%Y-%m-%d')
    plan_name = data.plan.metadata['Plan Name']

    if user
      user.update_custom_field_value("Stripe Customer ID", stripe_customer_id)
      user.update_custom_field_value("Trial Start Date", start_date)
      user.update_custom_field_value("Trial End Date", end_date)
      user.update_custom_field_value("Plan Type", plan_name)
      user.update_custom_field_value("Account Status", "Active")
    end
  end

  def handle_invoice_payment_failed(invoice)
    Rails.logger.info "******Payment failed for invoice: #{invoice.id}"
    user = User.find_by(mail: invoice.customer_email)
    data = invoice.lines.data[0]
    start_date = Time.now.strftime('%Y-%m-%d')
    end_date = Time.now.strftime('%Y-%m-%d')

    if user
      user.update_custom_field_value("Trial Start Date", start_date)
      user.update_custom_field_value("Trial End Date", end_date)
      user.update_custom_field_value("Plan Type", "Trial")
      user.update_custom_field_value("Account Status", "Expired")
    end
  end

  def handle_subscription_updated(subscription)
    Rails.logger.info "******Subscription Changed: #{subscription.plan.nickname}"
    customer = Stripe::Customer.retrieve(subscription.customer)
    user = User.find_by(mail: customer.email)
    data = subscription.items.data[0]
    start_date = Time.at(subscription.current_period_start).strftime('%Y-%m-%d')
    end_date = Time.at(subscription.current_period_end).strftime('%Y-%m-%d')
    plan_name = data.plan.metadata['Plan Name']

    if user
      user.update_custom_field_value("Trial Start Date", start_date)
      user.update_custom_field_value("Trial End Date", end_date)
      user.update_custom_field_value("Plan Type", plan_name)
      user.update_custom_field_value("Account Status", "Active")
    end
  end

  def handle_subscription_deleted(subscription)
    Rails.logger.info "******Subscription Canceled"
    customer = Stripe::Customer.retrieve(subscription.customer)
    user = User.find_by(mail: customer.email)
    data = subscription.items.data[0]
    start_date = Time.at(subscription.current_period_start).strftime('%Y-%m-%d')
    end_date = Time.at(subscription.current_period_end).strftime('%Y-%m-%d')
    plan_name = data.plan.metadata['Plan Name']

    if user
      user.update_custom_field_value("Trial Start Date", start_date)
      user.update_custom_field_value("Trial End Date", end_date)
      user.update_custom_field_value("Plan Type", plan_name)
      user.update_custom_field_value("Account Status", "Expired")
    end
  end
end
