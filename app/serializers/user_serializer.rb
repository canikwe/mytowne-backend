class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth_date, :email, :username, :town, :avatar, :bio, :followed_tags, :likes, :follow_ids, :follower_ids, :created_at

  def followed_tags
    self.object.tags.map do |t|
      t.id
    end
  end

end
