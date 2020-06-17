class DislikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :group_id, :topic_id, :comment_id
end
