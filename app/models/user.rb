class User < ApplicationRecord
  #Associations
  has_many :posts, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  has_many :followed_tags, dependent: :destroy
  has_many :tags, through: :followed_tags

  has_many :comments

  has_secure_password

  #Validations
  validates :name, presence: true
  validates :username, uniqueness: { case_sensitive: false}

  def followed_posts
    self.tags.uniq.map do |t|
      t.posts
    end.flatten.uniq.sort_by do |p|
      p.id
    end.reverse
  end
end
