class UpdateUsers < ActiveRecord::Migration
  def change
    add_column :users, :age, :integer
    add_column :users, :last_score, :integer
    add_column :users, :average, :float
    add_column :users, :zip_code, :string
    add_column :users, :tel, :string
    add_column :users, :contact_type, :string, default: 'phone'
  end
end
