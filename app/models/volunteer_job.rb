class VolunteerJob < ActiveRecord::Base
  belongs_to :volunteer
  belongs_to :job
end
