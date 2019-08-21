class Api::V1::LikesController < ApplicationController
  
  def create
    like = Like.create(like_params)
    render json: {post: PostSerializer.new(like.post), status: :success}
  end

  def destroy
    like = Like.find(params[:id]).destroy
    post = like.post
    render json: post
  end

  private
  def like_params
    params.require(:like).permit(:user_id, :post_id, :id)
  end

end
