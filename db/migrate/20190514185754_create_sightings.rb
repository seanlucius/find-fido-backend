class CreateSightings < ActiveRecord::Migration[5.2]
  def change
    create_table :sightings do |t|
      t.integer :user_id
      t.string :picture
      t.float :latitude
      t.float :longitude
      t.string :species
      t.string :name
      t.string :breed
      t.string :sex
      t.string :age
      t.string :color
      t.string :defining_features
      t.text :description

      t.timestamps
    end
  end
end
