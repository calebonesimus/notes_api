class CommentSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :body, :title, :note_id
end
