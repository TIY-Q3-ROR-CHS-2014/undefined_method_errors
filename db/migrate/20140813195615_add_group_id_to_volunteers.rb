class AddGroupIdToVolunteers < ActiveRecord::Migration
  def change
    add_column :volunteers, :group_id, :integer
    add_column :jobs, :volunteer_id, :integer
  end
end
