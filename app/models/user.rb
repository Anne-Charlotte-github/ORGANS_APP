class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :owner_organs, foreign_key: :owner_id, class_name: "Organ"
  has_many :customer_bookings, foreign_key: :customer_id, class_name: "Booking"
end
