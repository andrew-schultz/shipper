class SessionsController < ApplicationController
	def new
	end

	def create
		@user = User.find_by_email(params[:email])
		if @user && @user.authenticate(params[:password])
			session[:user_id] = @user.id
			redirect_to root_path, :notice => "You've logged in successfully"
		else
			flash[:alert] = "Invalid email or password"
			render "new"
		end
	end

	def destroy
		session[:user_id] = nil
		flash[:notice] = "You've been logged out successfully"
		redirect_to log_in_path
	end

end
