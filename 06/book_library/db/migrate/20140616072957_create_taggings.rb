class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
