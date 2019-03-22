class Post < ApplicationRecord
  #Associations
  belongs_to :user
  has_many :post_tags
  has_many :tags, through: :post_tags, dependent: :destroy

  #Validations
  validates :title, presence: true
  validates :content, presence: true
  validates :user_id, presence: true

end
