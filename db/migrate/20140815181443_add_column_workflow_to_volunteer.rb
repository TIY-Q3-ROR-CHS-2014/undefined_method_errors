class AddColumnWorkflowToVolunteer < ActiveRecord::Migration
  def change
    add_column :volunteers, :workflow_state, :string
  end
end
