class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :type_id
      t.integer :breed_id
      t.column :sex, "ENUM('male', 'female')"
      t.text :description

      t.timestamps
    end
  end
end
