class CreateLostPets < ActiveRecord::Migration[5.2]
  def change
    create_table :lost_pets do |t|
      t.integer :user_id
      t.string :name
      t.float :latitude
      t.float :longitude
      t.string :picture
      t.string :species
      t.string :breed
      t.string :sex
      t.string :age
      t.string :color
      t.string :defining_features
      t.text :instructions

      t.timestamps
    end
  end
end
