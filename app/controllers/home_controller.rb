class HomeController < ApplicationController
  def index
	@user = current_user
	@users = User.all
	@boats = @user.boats
	
	# @thelocation = Location.where(id: @boat.location_id).first
	@jobs = Job.where(boat_id: nil)
  end
end
