# Preview all emails at http://localhost:3000/rails/mailers/trial_reminder_mailer
class TrialReminderMailerPreview < ActionMailer::Preview
  def trial_expiring
    TrialReminderMailer.trial_expiring(User.last)
  end
end
