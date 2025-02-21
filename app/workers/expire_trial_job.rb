class ExpireTrialJob < ApplicationJob
  def perform
    users = User.all.select do |user|
      begin
        trial_end_date = user.custom_field_value("Trial End Date")
        status = user.custom_field_value("Account Status")

        # Skip if trial_end_date is blank
        next false if trial_end_date.blank?

        trial_end_date_as_date = Date.parse(trial_end_date)
        current_date = Time.now.to_date

        # Check if trial has expired and user is still in Trial status
        (current_date > trial_end_date_as_date) && (status == "Trial")
      rescue ArgumentError => e
        Rails.logger.error "Invalid date format for user #{user.id}: #{trial_end_date} (Error: #{e.message})"
        false # Skip this user
      rescue => e
        Rails.logger.error "Unexpected error processing user #{user.id}: #{e.message}"
        false # Skip this user
      end
    end

    users.each do |user|
      user.update_custom_field_value("Account Status", "Expired")
    end
  end
end
