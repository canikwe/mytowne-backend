class Api::V1::TagsController < ApplicationController

  def index
    @tags = Tag.all.each {|t| t.destroy if t.post_tags == []} #destroy all unused tags
    render json: @tags, status: :accepted
  end

  def create
    @tag = Tag.new(tag_params)
    if @tag.save
      render json: @tag, status: :accepted
    else
      render json: {errors: @tag.errors.full_messages, status: :unprocessible_entity}
    end
  end

  private
  def tag_params
    params.require(:tag).permit(:id, :name)
  end
end
