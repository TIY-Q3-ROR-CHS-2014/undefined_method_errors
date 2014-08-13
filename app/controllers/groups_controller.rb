class GroupsController < ApplicationController
  def show
    @group = Group.all
  end

  def new
    @group = Group.new params[:id]    
  end

  def create
    @group =Group.create group_params
    redirect_to group_path(@group)
  end


  def edit
  end

private

  def group_params
  params.require(:group).permit(:name)
  end

end
