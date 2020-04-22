class CommentSerializer < ActiveModel::Serializer
  attributes :id, :text, :post_id, :parent_id, :created_at, :user
  
  def user
    self.object.user
  end
end
