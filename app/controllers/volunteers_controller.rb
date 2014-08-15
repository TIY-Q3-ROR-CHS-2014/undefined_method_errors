class VolunteersController < ApplicationController

  before_action :authenticate_volunteer!
  
  before_action :find_group
  before_action :find_volunteer, only: [:show, :edit, :update, :destroy]

  def index
    @volunteers = Volunteer.all
  end

  def show
  end

  def new
    @volunteer = Volunteer.new
  end

  def create
    @volunteer = @group.volunteers.create volunteer_params
    if @volunteer.save == true
    redirect_to group_path(@group)
    else
    render :new
    end
  end

  def edit
  end

  def update
    @volunteer.update_attributes volunteer_params
    redirect_to group_path(@group)
  end

  def destroy
    @volunteer.delete
    redirect_to group_path(@group, @volunteer), method: :delete
  end

  private

  def find_group
    @group = Group.find params[:group_id]
  end
  
  def find_volunteer
    @volunteer = Volunteer.find params[:id]
  end

  def volunteer_params
    params.require(:volunteer).permit(:name)
  end

end

