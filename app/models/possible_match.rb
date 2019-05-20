class PossibleMatch < ApplicationRecord
  belongs_to :sighting
  belongs_to :lost_pet
end
