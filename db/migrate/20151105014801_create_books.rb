class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :cover_image
      t.text :summary
      t.integer :genre_id
      t.integer :author_id

      t.timestamps null: false
    end
    add_index :books,[:title,:genre_id,:author_id]
  end
end
