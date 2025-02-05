class TrialReminderJob < ApplicationJob
  def perform
    reminder_date = 3.days.from_now.strftime('%Y-%m-%d')

    users = User.all.select do |user|
      trial_end_date = user.custom_field_value("Trial End Date")
      status = user.custom_field_value("Account Status")
      trial_end_date.present? && (trial_end_date == reminder_date) && (status == "Trial")
    end

    users.each do |user|
      TrialReminderMailer.trial_expiring(user).deliver_later
    end
  end
end
