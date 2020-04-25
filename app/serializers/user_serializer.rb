class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth_date, :email, :username, :town, :avatar, :bio, :followed_tags, :likes, :follow_ids, :follower_ids, :created_at

  def followed_tags
    if self.object.tags
      self.object.tags.map do |t|
        t.id
      end
    else
      self.scope.tags.map do |t|
        t.id
      end
    end
  end

  # def follow_ids
  #   self.object.follows.map {|f| f.id}
  # end

  # def follower_ids
  #   self.object.followers.map {|f| f.id}
  # end


  # def favorite_posts
  #   self.object.likes
  # end
end
