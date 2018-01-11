class Job < ActiveRecord::Base
  validates :title, :company, :applyurl, presence: true
  validates :applyurl, :companyurl, :format => URI::regexp(%w(http https))
  enum level: ['Junior', 'Semi-Senior', 'Senior']
  enum jobtype: ['Education', 'Programming', 'Construction']
end
