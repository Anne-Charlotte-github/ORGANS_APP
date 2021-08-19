# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Organ.destroy_all
User.destroy_all
puts 'Clear db'

nathan = User.new(username: 'Nathan', email: 'toto@gmail.com', password: '123456', password_confirmation: '123456')

nathan.save!
organ = Organ.create!(
  organ_type: Organ::TYPES.sample,
  city: 'Bourg en Bresse',
  condition: 'Pas ouf',
  price: 20.0,
  owner: nathan,
)
puts "Add user #{nathan.email}"

20.times do
  user = User.new(username: Faker::Internet.username, email: Faker::Internet.email, password: 'secret_password', password_confirmation: 'secret_password')
  user.save!
  organ = Organ.new(organ_type: Organ::TYPES.sample, city: 'Lyon', condition: 'Pas ouf', price: 20.0)
  organ.owner_id = user.id
  organ.save!
  puts "Add user #{user.email}"
end

Booking.create(organ: Organ.last, customer_id: nathan.id, renting_at: Date.today)
Booking.create(organ: Organ.last, customer_id: nathan.id, renting_at: (Date.today - 2) )


puts 'Finish'
