class BoatsController < ApplicationController
	 def index
  	@boats = Boat.all
  end

  def new
  	@boat = Boat.new
  	@user = current_user
    @locations = Location.all
  end

  def create
  	@boat = Boat.new(boat_params)
  	if @boat.save
  		redirect_to root_path
  	else
  		redirect_to :back
  	end
  end

  def edit
  	@boat = Boat.find(params[:id])
  end

  def update
  	@boat = Boat.find(params[:id])
  	@boat.update(boat_params)
  end

  def show
  	@boat = Boat.find(params[:id])
  	@jobs = @boat.jobs
  	@job = Job.new
    @locations = Location.all
    @addjob = Job.where(boat_id: nil)
  end

  def destroy
  	@boat = Boat.find(params[:id])
  	@boat.destroy
  	redirect_to root_path
  end

  private

  def boat_params
  	params.require(:boat).permit(:name, :capacity, :location_id, :user_id)
  end
end
