class Organ < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  TYPES = ['poumon', 'coeur', 'foie', 'cerveau', 'rein', 'burnasse']
  CITIES = ['Lyon', 'Bourk-en-Bresse', 'Guilherand-Granges', 'Mions', 'Soucieu-en-Jarrest']
end
