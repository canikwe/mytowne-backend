class Api::V1::PostTagsController < ApplicationController
  before_action :get_post_tag, only: [:destroy]

  def index
    @post_tags = PostTag.all
    render json: @post_tags
  end
  
  def create
    byebug
    @post_tag = PostTag.new(post_tag_params)
    
    if @post_tag.save
      render json: @post_tag, status: :accepted
    else
      render json: {errors: @post_tag.errors.full_messages, status: :unprocessible_entity}
    end
  end

  def destroy
    post_tag = @post_tag
    @post_tag.destroy
    render json: post_tag
  end

  private
  def get_post_tag
    @post_tag = PostTag.find(params[:id])
  end

  def post_tag_params
    params.require(:post_tag).permit(:id, :tag_id, :post_id, :name)
  end
end
