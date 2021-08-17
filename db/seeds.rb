# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Organ.destroy_all
puts 'Clear db'

10.times do
  user = User.new(email: Faker::Internet.email, password: 'secret_password', password_confirmation: 'secret_password')
  user.save!
  organ = Organ.new(type: 'Poumon', city: 'Lyon', condition: 'Pas ouf', price: 20.0)
  organ.owner_id = user
  organ.save!
  puts "Add user #{user.name}"
end
puts 'Finish'
