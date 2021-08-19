class Organ < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings

  TYPES = ['poumon', 'coeur', 'foie', 'cerveau', 'rein', 'burnasse']
  CITIES = ['Lyon', 'Bourk-en-Bresse', 'Guilherand-Granges', 'Mions', 'Soucieu-en-Jarrest']
  DISEASE = ['pica', 'hypertrichose', 'syndrome du zombie', 'elephantiasis', 'progéria', 'potomanie', 'otite du cul']
  BLOOD_GROUP = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']
  CONDITION = ['pourrie', 'correct', 'bon etat', 'parfait']
end
