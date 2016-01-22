class FollowshipsController < ApplicationController
	def create
		@user = current_user
		@boat = Boat.find(params[:id])
		@follow = Followship.new(user_id: current_user.id, boat_id: @boat.id)
		@follow.save
		redirect_to :back
	end

	def destroy
		@user = current_user
		@boat = Boat.find(params[:id])
		@unfollow = Followship.find_by(user_id: @user.id, boat_id: @boat.id)
		@unfollow.destroy
		redirect_to :back
	end

	private

	def followship_params
		params.require(:followship).permit(:user_id, :boat_id)
	end

end
