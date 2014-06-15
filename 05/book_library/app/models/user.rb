class User < ActiveRecord::Base
  validates :name, :department, presence: true
end
