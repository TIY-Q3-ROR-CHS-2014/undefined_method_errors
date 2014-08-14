class VolunteersController < ApplicationController
  
  def index
    @volunteers = Volunteer.all
  end

  def show
  end

  def new
  end

  def edit
  end

  private
  
  def find_volunteer
    @volunteer = Volunteer.find params[:id]
  end
  def volunteer_params
    params.require(:volunteer).permit(:name)
  end

end

