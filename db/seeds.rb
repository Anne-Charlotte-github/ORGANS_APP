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
# organ = Organ.create!(
#   organ_type: Organ::TYPES.sample,
#   city: 'Bourg en Bresse',
#   condition: Organ::CONDITIONS.sample,
#   price: rand(1000),
#   disease: Organ::DISEASES.sample,
#   blood_group: Organ::BLOOD_GROUPS.sample,
#   owner: nathan
# )
puts "Add user #{nathan.email}"

class_mates = ['Léo Genuit', 'Simon Granger', 'Nicolas Feuerstein', 'Michael Grosheny', 'Jonathan Kerbrat', 'Clément Moréno', 'Anne-Charlotte Morizot', 'Thi Thu Ha Nguyen']

class_mates.each do |class_mate|
  user = User.new(username: class_mate,
                  email: Faker::Internet.email,
                  password: 'secret_password',
                  password_confirmation: 'secret_password')
  user.save!

  # rand(6).times do
  #   organ = Organ.new(organ_type: Organ::TYPES.sample,
  #                     city: Organ::CITIES.sample,
  #                     condition: Organ::CONDITIONS.sample,
  #                     price: rand(1000),
  #                     disease: Organ::DISEASES.sample,
  #                     blood_group: Organ::BLOOD_GROUPS.sample)
  #   organ.owner_id = user.id
  #   organ.save!
  # end

  puts "Add user #{user.email}"
end
file = URI.open('https://static.turbosquid.com/Preview/2019/07/04__08_41_09/1.png7D544F6B-AB4C-4C78-AF52-59DF859F84EBLarge.jpg')
organ = Organ.new(organ_type: 'coeur',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://i.pinimg.com/originals/51/80/58/518058e1c733e04839626664555f677c.jpg')
organ = Organ.new(organ_type: 'coeur',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9_4PP4Qx0A5-AhT2HdAvcKKxkfjhs-qQfJA&usqp=CAU')
organ = Organ.new(organ_type: 'poumon',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://one.nbstatic.fr/uploaded/20200510/6733005/00001_Coeur-Humain.jpg')
organ = Organ.new(organ_type: 'coeur',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://i.pinimg.com/236x/fb/28/86/fb28861a3fdaf451289aa5218549b08b.jpg')
organ = Organ.new(organ_type: 'coeur',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')


file = URI.open('https://st.depositphotos.com/1732591/2676/v/600/depositphotos_26762911-stock-illustration-human-lungs.jpg')
organ = Organ.new(organ_type: 'poumon',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://st.depositphotos.com/1067125/4702/v/600/depositphotos_47022739-stock-illustration-normal-human-kidney-and-cross.jpg')
organ = Organ.new(organ_type: 'rein',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://us.123rf.com/450wm/logo3in1/logo3in11605/logo3in1160500015/57014128-vecteur-de-poumon-humain-illustration-%C3%A0-propos-de-l-organe-interne-humain-.jpg?ver=6')
organ = Organ.new(organ_type: 'poumon',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://img.freepik.com/vecteurs-libre/anatomie-poumons-humains-diagramme-du-cancer_1284-51705.jpg?size=338&ext=jpg')
organ = Organ.new(organ_type: 'poumon',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')


file = URI.open('https://st.depositphotos.com/1765462/1282/v/600/depositphotos_12820598-stock-illustration-human-kidney-vector.jpg')
organ = Organ.new(organ_type: 'rein',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://st4.depositphotos.com/2485347/23457/v/600/depositphotos_234577958-stock-illustration-vector-cartoon-human-liver-with.jpg')
organ = Organ.new(organ_type: 'foie',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://png.pngtree.com/png-vector/20191001/ourmid/pngtree-human-kidneys-icon-cartoon-style-png-image_1773769.jpg')
organ = Organ.new(organ_type: 'rein',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://static.vecteezy.com/ti/vecteur-libre/p1/2177698-dessine-a-la-main-humain-rein-medical-sain-concept-illustration-plat-vectoriel.jpg')
organ = Organ.new(organ_type: 'rein',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://preview.free3d.com/img/2017/07/2212620295481591677/6x5d8tai-900.jpg')
organ = Organ.new(organ_type: 'foie',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://us.123rf.com/450wm/vextok/vextok1609/vextok160900011/61990624-foie-humain-en-digestif-syst%C3%A8me-vecteur-illustration.jpg?ver=6')
organ = Organ.new(organ_type: 'foie',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')


file = URI.open('https://www.colourbox.com/preview/3975309-two-coconuts.jpg')
organ = Organ.new(organ_type: 'burnasse',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://www.courrierinternational.com/sites/ci_master/files/styles/image_original_1280/public/assets/images/8376271918_25884987e2_k.jpg?itok=gaby_A6G')
organ = Organ.new(organ_type: 'cerveau',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://fr.shopping.rakuten.com/photo/modele-de-cerveau-humain-avec-nerfs-cerveau-en-9-parties-1721044693_ML.jpg')
organ = Organ.new(organ_type: 'cerveau',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://dailygeekshow.com/wp-content/uploads/2021/03/une-cerveau-gene-zombie-1024x576.jpeg')
organ = Organ.new(organ_type: 'cerveau',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

file = URI.open('https://m.media-amazon.com/images/I/61smImQWE3L.jpg')
organ = Organ.new(organ_type: 'burnasse',
                    city: Organ::CITIES.sample,
                    condition: Organ::CONDITIONS.sample,
                    price: rand(1000),
                    disease: Organ::DISEASES.sample,
                    blood_group: Organ::BLOOD_GROUPS.sample)
organ.owner = User.all.sample
organ.save!
organ.photo.attach(io: file, filename: 'organ.png', content_type: 'image/jpg')

puts 'Finish'
