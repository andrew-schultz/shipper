class UsersController < ApplicationController
	def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)
  	if @user.save
  		flash[:notice] = "You've successfully created a new account"
  		current_user = @user
  		session[:user_id] = @user.id
  		redirect_to root_path
  	else
  		flash[:notice] = "There was an error creating your account, please try again"
  		redirect_to :back
  	end
  end

  def index
  	@users = User.all
  end

  def show
  	@user = User.find(params[:id])
    @boats = @user.boats
    @jobs = Job.where(user_id = @user.id)
  end

  def edit
  	@user = current_user
  end

  def update
  	@user = current_user
  	@user.update(user_params)
  	if @user.save
  		flash[:notice] = "Account Updated"
  		redirect_to root_path
  	else
  		flash[:notice] = "There was an error editing your account, please try again"
  		redirect_to :back
  	end
  end

  def destroy
  	@user = User.find(params[:id])
  	@user.destroy
  	redirect_to root_path
  end

  private

  def user_params
  	params.require(:user).permit(:email, :username, :password)
  end

end
