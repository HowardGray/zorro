class Job < ActiveRecord::Base
  validates :title, :company, :applyurl, presence: true
  enum level: ['Junior', 'Semi-Senior', 'Senior']
  enum jobtype: ['Education', 'Programming', 'Construction']
end
