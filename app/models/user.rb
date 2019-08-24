class User < ApplicationRecord
  #Associations
  has_many :posts, dependent: :destroy

  has_many :likes, dependent: :destroy
  has_many :liked_posts, through: :likes, source: :post

  has_secure_password

  #Validations
  validates :name, presence: true
  validates :username, uniqueness: { case_sensitive: false}
end
