class Tag < ActiveRecord::Base
  has_many :taggings
  has_many :books, through: :taggings
end
