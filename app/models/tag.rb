class Tag < ActiveRecord::Base
  has_many :taggins
  has_many :notes, through: :taggings
end
