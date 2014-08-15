class WelcomeController < ApplicationController
  def index
  	@volunteer = Volunteer.all
  end
end
