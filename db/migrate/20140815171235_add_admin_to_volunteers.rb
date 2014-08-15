class AddAdminToVolunteers < ActiveRecord::Migration
  def self.up
    add_column :volunteers, :admin, :boolean, :default => false
  end

  def self.down
    remove_column :volunteers, :admin
  end
end