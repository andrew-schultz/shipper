class JobsController < ApplicationController
	def new
		@job = Job.new
		@locations = Location.all
		@user = current_user
	end

	def create
		@job = Job.new(job_params)
		@locations = Location.all
		@user = current_user
		if @job.save
			flash[:notice] = "Job Created"
			redirect_to root_path
		else
			flash[:notice] = "There was an error creating your job, please try again."
			redirect_to :back
		end
	end

	def edit
		@job = Job.find(params[:id])
	end

	def update
		@job = Job.find(params[:id])
		@job.update(job_params)
		redirect_to :back
	end

	def show
		@job = Job.find(params[:id])
		@user = current_user
		@origin = Location.where(id: @job.origin).first
		@destination = Location.where(id: @job.destination).first
		@boats = Boat.where(user_id: @user.id)
		@boat = @job.boat
		# @boat = Boat.find(params[:id])
	end

	def index
		@jobs = Job.all
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to new_job_path
	end

	def _state
		@job = Job.find(params[:id])
		@job.update(job_params)
	end

	def _new 
		@job = Job.new
		@locations = Location.all
		@user = current_user
	end

	private

	def job_params
		params.require(:job).permit(:name, :boat_id, :cost, :cargo, :origin, :destination, :containers, :user_id, :state)
	end
end
