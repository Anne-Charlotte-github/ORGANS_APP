class Organ < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  TYPES = ['poumon', 'coeur', 'foie', 'pancréas', 'rein', 'burnasse']

end
