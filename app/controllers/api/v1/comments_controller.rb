class Api::V1::CommentsController < ApplicationController

  def create
    # byebug
    comment = Comment.new(comment_params)
    if comment.valid?
      comment.save
      render json: comment.post, status: :created
    else
      failed_validations(comment)
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:user_id, :parent_id, :text, :post_id)
  end
end
