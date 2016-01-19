class JobsController < ApplicationController
	def new
		@job = Job.new
		@locations = Location.all
	end

	def create
		@job = Job.new(job_params)
		@locations = Location.all
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
		redirect_to root_path
	end

	def show
		@job = Job.find(params[:id])
		@origin = Location.where(id: @job.origin).first
		@destination = Location.where(id: @job.destination).first
		@boats = Boat.all
		@boat = Boat.find_by(id: params[:boat_id])
	end

	def index
		@jobs = Job.all
	end

	def destroy
		@job = Job.find(params[:id])
		@job.destroy
		redirect_to new_job_path
	end

	private

	def job_params
		params.require(:job).permit(:name, :boat_id, :cost, :cargo, :origin, :destination, :containers)
	end
end
