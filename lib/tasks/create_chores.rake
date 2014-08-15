task create_chores: :environment do
  @jobs = Job.all
  @volunteers = Volunteer.available_volunteers(@jobs.length)
  
  @jobs.each_with_index do |x, y|
    @volunteers[y].volunteer_jobs.create(job: x)
  end

end 