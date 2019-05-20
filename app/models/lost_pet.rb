class LostPet < ApplicationRecord
  belongs_to :user
  has_many :possible_matches
  has_many :sightings, through: :possible_matches
end
