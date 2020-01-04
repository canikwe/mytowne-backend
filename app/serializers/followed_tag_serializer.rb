class FollowedTagSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :tag_id
end
