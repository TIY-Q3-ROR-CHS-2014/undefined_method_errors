class JobsController < ApplicationController
  # before_action :find_group, only:[:create, :destroy, :update]
  before_action :find_job, only: [:show, :edit, :update, :destroy]
  
  def index
    @jobs = Job.all
  end

  def show
  end

  def new
    @job = Job.new
  end

  def edit
  end

  def create
    @job = Job.create job_params
    if @job.save == true
    redirect_to jobs_path
    else
    render :new
    end
  end

  def update
    @job.update_attributes job_params
    redirect_to jobs_path(@job)
  end

  def destroy
    @job.delete
    redirect_to jobs_path(@job), method: :delete
  end

  private

  def find_group
    @group = Group.find params[:group_id]
  end
  
  def find_job
    @job = Job.find params[:id]
  end

  def job_params
    params.require(:job).permit(:name, :instructions, :frequency)
  end


end
