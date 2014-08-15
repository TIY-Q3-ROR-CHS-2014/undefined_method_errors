class Volunteer < ActiveRecord::Base
  belongs_to :group
  has_many :volunteer_jobs
  has_many :jobs, through: :volunteer_jobs

 	devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable
end
