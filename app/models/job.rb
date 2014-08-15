class Job < ActiveRecord::Base
has_many :volunteer_jobs
has_many :volunteers, through: :volunteer_jobs
end
