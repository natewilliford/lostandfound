class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.column :lat, :decimal, precision: 10, scale: 6
      t.column :lng, :decimal, precision: 10, scale: 6
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps
    end
  end
end
