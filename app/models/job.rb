class Job < ActiveRecord::Base
  validates :title, :company, :applyurl, presence: true
  validates :applyurl, :companyurl, :format => URI::regexp(%w(http https))
  enum level: ['Junior', 'Semi-Senior', 'Senior']
  enum jobtype: ['Education', 'Programming', 'Construction']
  # Scopes
  scope :posted_last_week, -> { where('created_at >= ?', 1.week.ago) }


  def self.send_weekly_email
    JobsMailer.weekly_jobs.deliver_now
  end
end
