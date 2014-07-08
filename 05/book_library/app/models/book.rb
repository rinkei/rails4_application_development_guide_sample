class Book < ActiveRecord::Base
  belongs_to :user, dependent: :destroy
  belongs_to :holder, class_name: 'User'
  has_many :taggings, foreign_key: 'tag_id'
  has_many :tags, through: :taggings

  scope :tagged_tag1, -> { joins(:tags).where('tags.name = ?', 'tag1') }

  #after_create BooksSizeIncrement.new
  #after_create :book_size_increment
  #after_create "self.user.increment!(:books_size)"
  after_create do |record|
    puts 'block'
    record.user.increment!(:books_size)
  end

  private
  def book_size_increment
    puts 'symbol'
    self.user.increment!(:books_size)
  end
end
