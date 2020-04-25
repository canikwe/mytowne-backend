class Api::V1::UserFollowsController < ApplicationController

  def create
    user_follow = UserFollow.find_or_create_by(user_follow_params)
    
    if user_follow
      render json: user_follow, status: :created
    else
      render json: { error: user_follow.errors.full_messages, status: :not_acceptable }
    end
  end

  def destroy
    user_follow = UserFollow.find(params[:id])
    @user_follow = user_follow
    UserFollow.destroy(user_follow)
    
    render json: @user_follow
  end

  private

  def user_follow_params
    params.require(:user_follow).permit(:follower_id, :followed_id)
  end
end
