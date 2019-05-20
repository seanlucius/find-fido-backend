class CreatePossibleMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :possible_matches do |t|
      t.integer :sighting_id
      t.integer :lost_pet_id

      t.timestamps
    end
  end
end
