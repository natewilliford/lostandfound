class CreatePetTypes < ActiveRecord::Migration
  def change
    create_table :pet_types do |t|
      t.string :type

      t.timestamps
    end
  end
end
