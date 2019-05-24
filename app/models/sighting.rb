class Sighting < ApplicationRecord
  belongs_to :user, optional: true
  has_many :possible_matches
  has_many :lost_pets, through: :possible_matches
end
