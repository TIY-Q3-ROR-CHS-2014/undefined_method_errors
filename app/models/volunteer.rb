class Volunteer < ActiveRecord::Base
  belongs_to :group
  has_many :jobs
end
