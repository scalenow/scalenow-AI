class TrialReminderMailer < ApplicationMailer
  def trial_expiring(user)
    @user = user
    mail(to: @user, subject: 'Trial Expiring Soon - Upgrade Now!')
  end
end
