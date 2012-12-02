class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :location_id
      t.integer :item_id
      t.string :title
      t.text :description
      t.column :post_type, "ENUM('lost', 'found')"
      t.column :item_type, "ENUM('pet', 'item', 'person')"
      t.datetime :date

      t.timestamps
    end
  end
end
