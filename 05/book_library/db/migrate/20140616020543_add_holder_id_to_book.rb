class AddHolderIdToBook < ActiveRecord::Migration
  def change
    add_column :books, :holder_id, :integer
  end
end
