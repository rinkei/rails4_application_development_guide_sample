class CreateBorrowings < ActiveRecord::Migration
  def change
    create_table :borrowings do |t|
      t.references :user, index: true
      t.references :book, index: true
      t.date :due_back

      t.timestamps
    end
  end
end
