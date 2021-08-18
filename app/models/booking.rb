class Booking < ApplicationRecord
  belongs_to :organ
  belongs_to :customer, class_name: "User"
  validates :renting_at, presence: true, uniqueness: { scope: :organ_id }
end
