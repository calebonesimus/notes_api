class NoteSerializer < ActiveModel::Serializer
  attributes :title, :body, :created_at, :updated_at, :tags
  has_many :tags

  def tags
    object.tags.collect { |tag| tag.as_json(only: :name)}
  end
end

{
  "notes":
  [
    {
      "title":"another title",
      "body":"another body",
      "created_at":"2015-08-25T20:23:14.786Z",
      "updated_at":"2015-08-25T20:23:14.786Z",
      "tags":
      [
        {"name":"awesome"},
        {"name":"funny"},
        {"name":"silly"}
      ]
    }
  ]
}
