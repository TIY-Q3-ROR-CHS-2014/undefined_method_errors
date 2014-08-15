class FixJobColumns < ActiveRecord::Migration
  def change
    add_column :jobs, :group_id, :integer
    remove_column :jobs, :volunteer_id
  end
end
