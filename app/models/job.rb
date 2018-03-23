class Job < ActiveRecord::Base
  validates :title, :company, :applyurl, presence: true
  validates :applyurl, :companyurl, :format => URI::regexp(%w(http https))
  enum level: ['Junior', 'Mid-Level', 'Senior']
  enum jobtype: ['Full Time', 'Part Time', 'Freelance']
  # Scopes
  scope :posted_last_week, -> { where('created_at >= ?', 1.week.ago) }


  def self.send_weekly_email
    JobsMailer.weekly_jobs.deliver_now
  end

  def self.search(search)
  where("title LIKE ? OR description LIKE ? OR company LIKE ?", "%#{search}%", "%#{search}%", "%#{search}%") 
end

end
