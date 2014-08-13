class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :name
      t.text :instructions
      t.string :frequency

      t.timestamps
    end
  end
end
