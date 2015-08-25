class Note < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :body

  has_many :taggings
  has_many :tags, through: :taggings
end
