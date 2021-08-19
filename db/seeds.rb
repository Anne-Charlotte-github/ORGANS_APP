# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Booking.destroy_all
Organ.destroy_all
User.destroy_all
puts 'Clear db'

nathan = User.new(username: 'Nathan', email: 'toto@gmail.com', password: '123456', password_confirmation: '123456')

nathan.save!
organ = Organ.create!(
  organ_type: Organ::TYPES.sample,
  city: 'Bourg en Bresse',
  condition: Organ::CONDITIONS.sample,
  price: rand(1000),
  disease: Organ::DISEASES.sample,
  blood_group: Organ::BLOOD_GROUPS.sample,
  owner: nathan
)
puts "Add user #{nathan.email}"

class_mates = ['Léo Genuit', 'Simon Granger', 'Nicolas Feuerstein', 'Michael Grosheny', 'Jonathan Kerbrat', 'Clément Moréno', 'Anne-Charlotte Morizot', 'Thi Thu Ha Nguyen']

class_mates.each do |class_mate|
  user = User.new(username: class_mate,
                  email: Faker::Internet.email,
                  password: 'secret_password',
                  password_confirmation: 'secret_password')
  user.save!
  rand(6).times do
    organ = Organ.new(organ_type: Organ::TYPES.sample,
                      city: Organ::CITIES.sample,
                      condition: Organ::CONDITIONS.sample,
                      price: rand(1000),
                      disease: Organ::DISEASES.sample,
                      blood_group: Organ::BLOOD_GROUPS.sample)
    organ.owner_id = user.id
    organ.save!
  end
  puts "Add user #{user.email}"
end

puts 'Finish'
