class PostSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :img, :created_at, :updated_at, :post_tags, :tags
  has_many :post_tags
  # has_many :tags, through: :post_tags
  belongs_to :user

  def tags
    self.object.post_tags.map do |post_tag|
      {id: post_tag.tag.id, name: post_tag.tag.name, post_tag_id: post_tag.id}
    end
  end

end
