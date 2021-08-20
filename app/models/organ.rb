class Organ < ApplicationRecord
  belongs_to :owner, class_name: "User"
  has_many :bookings, dependent: :destroy
  has_one_attached :photo

  TYPES = ['poumon', 'coeur', 'foie', 'cerveau', 'rein', 'burnasse']
  CITIES = ['Lyon', 'Bourk-en-Bresse', 'Guilherand-Granges', 'Mions', 'Soucieu-en-Jarrest']
  DISEASES = ['pica', 'hypertrichose', 'syndrome du zombie', 'elephantiasis', 'progéria', 'potomanie', 'otite du cul']
  BLOOD_GROUPS = ['A+', 'A-', 'B+', 'B-', 'O+', 'O-', 'AB+', 'AB-']
  CONDITIONS = ['pourrie', 'correct', 'bon etat', 'parfait']
end
