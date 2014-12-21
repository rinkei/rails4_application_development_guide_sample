class AddBooksSizeToUser < ActiveRecord::Migration
  def change
    add_column :users, :books_size, :integer
  end
end
