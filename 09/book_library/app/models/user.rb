class User < ActiveRecord::Base
  validates :name, presence: true

  has_many :books
  has_many :holding_books, foreign_key: 'holder_id', class_name: 'Book'
end
