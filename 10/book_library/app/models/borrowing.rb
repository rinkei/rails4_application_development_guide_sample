class Borrowing < ActiveRecord::Base
  belongs_to :user
  belongs_to :book

  validates :user_id, presence: true

  def overdue?(date = Date.today)
    due_back.present? ? date > due_back : false
  end
end
