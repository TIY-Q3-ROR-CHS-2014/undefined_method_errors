class Volunteer < ActiveRecord::Base
  belongs_to :group
  has_many :volunteer_jobs
  has_many :jobs, through: :volunteer_jobs


 	devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  def self.available_volunteers(@jobs.length)
    self.all.limit(@jobs.length)
  end

  validates :name, presence: true

  include Workflow
  workflow do

    state :has_not_done_a_chore_this_round do
      event :its_your_turn_to_do_chores, transitions_to: :you_did_your_chores_for_this_round
    end 

    state :you_did_your_chores_for_this_round do
      event :everyone_did_their_chores_this_round, transitions_to: :has_not_done_a_chore_this_round
    end

  end
end
