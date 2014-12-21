class Book < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :holder, class_name: 'User'
  has_many :taggings, foreign_key: 'tag_id'
  has_many :tags, through: :taggings

  scope :search, ->(query=nil) {
    if query && query.valid?
      where("title like :keyword OR author like :keyword", keyword: query.keyword)
    else
      all
    end
  }

  scope :tagged_tag1, -> { joins(:tags).where('tags.name = ?', 'tag1') }
end
