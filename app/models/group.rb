class Group < ActiveRecord::Base
  has_many :volunteers
  has_many :jobs
end
