class Api::V1::PostsController < ApplicationController
  skip_before_action :authorized, only: [:show, :index]
  before_action :get_post, only: [:show, :update, :destroy]
  before_action :authorize_user, only: [:update, :destroy]

  def index
    @posts = Post.all
    render json: @posts
  end

  def show
    render json: @post
  end

  def create
    @post = Post.new(post_params[:post_info])

    authorize_user

    if @post.save
      if post_params[:post_tags_attributes]
        @post.update_post_tags(post_params[:post_tags_attributes])
      end
      render json: @post, status: :created
    else
      failed_validations
    end
  end

  def update
    if @post.update(post_params[:post_info])
      @post.update_post_tags(post_params[:post_tags_attributes])

      #Remove any unused tags upon update
      Tag.all.each { |t| t.destroy if t.post_tags == [] }

      render json: {post: PostSerializer.new(@post), tags: Tag.all, status: :success}, status: :success
    else
      failed_validations
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

  def authorize_user
    if @post.user != @user
      @post.errors.add(:not_authorized, "to change this post.")

      render json: {post: @post, errors: @post.errors.full_messages, status: :unauthorized}, status: :unauthorized
    end
  end

  def failed_validations
    render json: {errors: @post.errors.full_messages, status: :unprocessible_entity}, status: :unprocessible_entity
  end
end
