class JobsController < ApplicationController
  
  before_action :find_group
  before_action :find_volunteer
  before_action :find_job, only: [:show, :edit, :update, :destroy]

  def index
    @job = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def create
    @job = @volunteer.jobs.create job_params
    redirect_to group_volunteers_path(@group)
  end

  def edit
  end



private 

  def volunteer_params
    params.require(:volunteer).permit(:name)
  end

  def job_params
    params.require(:job).permit(:name, :frequency, :instructions)
  end

  def find_job
    @job = Job.find params[:id]
  end

  def find_group
    @group = Group.find params[:group_id]
  end

  def find_volunteer
    @volunteer = Volunteer.find params[:volunteer_id]
  end

end
