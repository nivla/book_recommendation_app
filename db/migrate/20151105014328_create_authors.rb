class CreateAuthors < ActiveRecord::Migration
  def change
    create_table :authors do |t|
      t.string :full_name
      t.string :picture
      t.string :gender
      t.string :born
      t.text   :bio
      t.timestamps null: false
    end
  end
end
