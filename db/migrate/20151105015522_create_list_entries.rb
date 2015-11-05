class CreateListEntries < ActiveRecord::Migration
  def change
    create_table :list_entries do |t|
      t.integer :list_id
      t.integer :book_id

      t.timestamps null: false
    end
    add_index :list_entries,[:list_id,:book_id]
  end
end
