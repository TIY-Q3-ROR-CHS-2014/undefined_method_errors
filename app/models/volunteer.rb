class Volunteer < ActiveRecord::Base
  belongs_to :group
  has_many :volunteer_jobs
  has_many :jobs, through: :volunteer_jobs



 	devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def self.available_volunteers(x)
    self.where(workflow_state: "has_not_done_a_chore_this_round").limit(x)
    # self.all.limit(x) 
  # this returns 2 volunteers starting at the beginning of the array

  end

  validates :name, presence: true

  include Workflow
  workflow do

    state :has_not_done_a_chore_this_round do
      event :new_week, transitions_to: :has_done_a_chore_this_round
    end 

    state :has_done_a_chore_this_round do
      event :everyone_has_done_a_chore_this_round, transitions_to: :has_not_done_a_chore_this_round
    end

  end
end 
