task create_chores: :environment do
  @jobs = Job.all
  @volunteers = Vol.available_volunteers(@jobs.length)
  
  @jobs.each do |x, index|
    @volunteers[index].volunteer_job.create(job: x)
  end

end