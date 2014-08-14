class Volunteer < ActiveRecord::Base
  belongs_to :group
  has_many :volunteer_jobs
  has_many :jobs, through: :volunteer_jobs
end
