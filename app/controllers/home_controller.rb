class HomeController < ApplicationController
  def index
  	if current_user
		@user = current_user
		@users = User.all
		@boats = @user.boats
		@job = Job.new
		@locations = Location.all
		@jobs = Job.where(boat_id: nil)
		@follow_ships = @user.ships
		@allboats = Boat.all
	else
		redirect_to log_in_path
	end
  end
end
