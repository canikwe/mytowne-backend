class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth_date, :email, :username, :town, :avatar, :bio, :followed_tags, :likes, :created_at

  def followed_tags
    self.object.tags.map do |t|
      t.id
    end
  end

  # def favorite_posts
  #   self.object.likes
  # end
end
