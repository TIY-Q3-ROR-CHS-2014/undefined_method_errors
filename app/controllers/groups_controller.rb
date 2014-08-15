class GroupsController < ApplicationController
  before_action :find_group, only: [:show, :edit, :update, :destroy]
  
  
  def index
    @groups = Group.all
  end

  def show
    @volunteers = Volunteer.all
    @jobs = Job.all
  end

  def new
    @group = Group.new
  end

  def create
    @group = Group.new group_params
    @group.save
    redirect_to groups_path
  end

  def edit
  end

  def update
    @group.update_attributes group_params
    redirect_to groups_path
  end

  def destroy
    @group.delete
    redirect_to groups_path(@group)
  end

  
  private

  def find_group
    @group = Group.find params[:id]
  end

  def group_params
    params.require(:group).permit(:name)
  end

end
