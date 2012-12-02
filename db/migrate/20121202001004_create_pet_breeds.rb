class CreatePetBreeds < ActiveRecord::Migration
  def change
    create_table :pet_breeds do |t|
      t.string :breed

      t.timestamps
    end
  end
end
