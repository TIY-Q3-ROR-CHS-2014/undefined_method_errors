class VolunteersController < ApplicationController
  before_action :find_group, only: [:show, :new, :index, :create]

  def index
    @volunteer = Volunteer.all
    @jobs = Job.all
  end

  def show

  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = @group.volunteers.create volunteer_params
    redirect_to group_volunteers_path(@group)
  end

  def edit
  end

private 

def volunteer_params
  params.require(:volunteer).permit(:name)
end

def find_group
  @group = Group.find params[:group_id]
end
end

