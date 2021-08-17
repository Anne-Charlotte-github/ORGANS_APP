class Booking < ApplicationRecord
  belongs_to :organ
  belongs_to :customer, class_name: "User"
end
