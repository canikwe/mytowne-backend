class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :birth_date, :email, :username, :town, :avatar, :bio, :followed_tags

  def followed_tags
    self.object.tags.map do |t|
      t.id
    end
  end
end
