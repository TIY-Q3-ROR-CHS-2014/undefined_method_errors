class WelcomeController < ApplicationController
  def index
  	@volunteer = Volunteer.all
  	@groups = Group.all
  end
end
