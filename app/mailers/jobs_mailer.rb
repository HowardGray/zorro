class JobsMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.jobs_mailer.weekly_jobs.subject
  #
  def weekly_jobs
    @jobs = Job.posted_last_week
    mail to: "henry2992@gmail.com"
  end
end
