class Job < ActiveRecord::Base
  belongs_to :group
  belongs_to :volunteers
end
