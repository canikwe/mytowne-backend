class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img, :created_at, :tags, :user
  has_many :post_tags
  has_many :likes

  def tags
    self.object.post_tags.map do |post_tag|
      {id: post_tag.tag.id, name: post_tag.tag.name, post_tag_id: post_tag.id}
    end
  end

  def likes
    self.object.likes.map do |like|
      {id: like.id, user_id: like.user_id, post_id: like.post_id}
    end
  end

  def user
    {id: self.object.user.id, avatar: self.object.user.avatar}
  end

end
