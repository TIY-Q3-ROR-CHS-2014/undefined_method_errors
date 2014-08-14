class CreateVolunteerJobs < ActiveRecord::Migration
  def change
    create_table :volunteer_jobs do |t|
      t.integer :volunteer_id
      t.integer :job_id

      t.timestamps
    end
  end
end
