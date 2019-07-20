class Api::V1::PostsController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]
  before_action :get_post, only: [:show, :update, :destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    render json: @post
  end

  def create
    @post = Post.new(post_params[:post_info])
    if @post.save
      @post.update_post_tags(post_params[:post_tags_attributes])

    render json: @post, status: :accepted
    else
      render json: {errors: @post.errors.full_messages, status: :unprocessible_entity}
    end
  end

  def update
    if @post.update(post_params[:post_info])
      @post.update_post_tags(post_params[:post_tags_attributes])

      #Remove any unused tags upon update
      Tag.all.each { |t| t.destroy if t.post_tags == [] }

      render json: {post: PostSerializer.new(@post), tags: Tag.all}, status: :success
    else
      render json: {errors: @post.errors.full_messages, status: :unprocessible_entity}
    end
  end
  
  def destroy
    post = @post
    @post.destroy
    render json: post
  end

  private
  def get_post
    @post = Post.find(params[:id])
  end

  def post_params
    #Formatted to accept nested attributes for post tags
    params.require(:post).permit(post_info: [:id, :title, :content, :img, :user_id],  post_tags_attributes: [:id, :name, :status, :post_tag_id] )
  end
end
