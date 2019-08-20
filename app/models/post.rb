class Post < ApplicationRecord
  #Associations
  belongs_to :user
  has_many :post_tags, dependent: :destroy
  has_many :tags, through: :post_tags, dependent: :destroy

  has_many :likes
  has_many :user_likes, through: :likes, source: :user

  accepts_nested_attributes_for :post_tags, allow_destroy: true

  #Validations
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

  #Find or create new tags based on the tag name
  def update_post_tags(post_tags_attributes)
    post_tags_attributes.each do |tag_hash|
      if tag_hash[:status] == 'delete'
        PostTag.destroy(tag_hash[:post_tag_id])
      else
        tag = Tag.find_or_create_by!(name: tag_hash[:name])
        PostTag.find_or_create_by!(post: self, tag_id: tag.id)
      end
    end

  end

end
