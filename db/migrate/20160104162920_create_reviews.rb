class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.integer :book_id
      t.integer :user_id
      t.text :content
      t.integer :score

      t.timestamps null: false
      t.index :book_id
      t.index :user_id
    end
  end
end
