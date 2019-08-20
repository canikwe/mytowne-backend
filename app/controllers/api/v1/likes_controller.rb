class Api::V1::LikesController < ApplicationController
  def create
    like = Like.create(like_params)
    render json: {post: PostSerializer.new(like.post), status: :success}, status: :success
  end

  def update
  end

  def destroy
  end

  private
  def like_params
    params.require(:like).permit(:user_id, :post_id, :id)
  end
end
