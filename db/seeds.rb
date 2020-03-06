require 'faker'
require 'open-uri'

puts 'Cleaning database...'
Favour.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating categories...'
dog_walk = Category.create!(name: 'Dog-Walking', icons: '<p>&#128054</p>')
kids = Category.create!(name: 'Baby-Sitting', icons: '<p>&#128118;&#127996</p>')
garden = Category.create!(name: 'Gardening', icons: '<p>&#127795</p>')
horse = Category.create!(name: 'Horses', icons: '<p>&#128052</p>')
cat = Category.create!(name: 'Cat-Sitting', icons: '<p>&#128049</p>')
it = Category.create!(name: 'Tech Support', icons: '<p>&#128187 </p>')
car = Category.create!(name: 'Ride-Share', icons: '<p>&#128664</p>')
clean = Category.create!(name: 'House Keeping', icons: '<p>&#127969</p>')
devoirs = Category.create!(name: 'Tutoring', icons: '<p>&#127891;</p>')
company = Category.create!(name: 'Elderly Care', icons: '<p>&#128116;&#127996</p>')
main = Category.create!(name: 'Maintenance', icons: '<p>&#128119;&#127996</p>')
other = Category.create!(name: 'Other', icons: '<p>&#128378;&#127996</p>')


puts 'Creating users...'
# user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_1 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_2 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_3 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_4 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_4 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )

file = URI.open('https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80/900x900')
emilie = User.new(email: 'emilie@favours.com', password: "123456", first_name: 'Emilie' , last_name: 'Keller', location: 'N/A', phone_number: 0788232167 )
emilie.profile_picture.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
emilie.save!

file_1 = URI.open('https://images.unsplash.com/photo-1505503693641-1926193e8d57?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80/900x900')
hugo = User.new(email: 'hugo.mori@outlook.com', password: "123456", first_name: 'Hugo' , last_name: 'Mori', location: 'Route du Jorat 82, 1000 Lausanne 26', phone_number: 0033786616612 )
hugo.profile_picture.attach(io: file_1, filename: 'nes.jpeg', content_type: 'image/jpeg')
hugo.save!

file_2 = URI.open('https://images.unsplash.com/photo-1506863530036-1efeddceb993?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1241&q=80/900x900')
georgina = User.new(email: 'georgina@fav.ch', password: "123456", first_name: 'Georgina' , last_name: 'Chups', location: 'Chemin de la Moraine 12, 1162 Saint-Prex', phone_number: 0795721677 )
georgina.profile_picture.attach(io: file_2, filename: 'nes.jpeg', content_type: 'image/jpeg')
georgina.save!

file_3 = URI.open('https://images.unsplash.com/photo-1526080652727-5b77f74eacd2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1355&q=80/900x900')
anais = User.new(email: 'anais@me.com', password: "123456", first_name: 'Anais' , last_name: 'Minal', location: 'Rue Marterey 29, 1005 Lausanne', phone_number: 0788137843 )
anais.profile_picture.attach(io: file_3, filename: 'nes.jpeg', content_type: 'image/jpeg')
anais.save!

file_4 = URI.open('https://images.unsplash.com/photo-1463453091185-61582044d556?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80/900x900')
etienne = User.new(email: 'etienne@hotmail.com', password: "123456", first_name: 'Etienne' , last_name: 'Roger', location: 'Quai Jean-Pascal Delamuraz 1, 1006 Lausanne', phone_number: 0764894455 )
etienne.profile_picture.attach(io: file_4, filename: 'nes.jpeg', content_type: 'image/jpeg')
etienne.save!

file_5 = URI.open('https://images.unsplash.com/photo-1520785643438-5bf77931f493?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80/900x900')
florian = User.new(email: 'florian.haru@me.com', password: "123456", first_name: 'Florian' , last_name: 'Fleischmann', location: 'Place du Port 7, 1006 Lausanne', phone_number: 0033624585878 )
florian.profile_picture.attach(io: file_5, filename: 'nes.jpeg', content_type: 'image/jpeg')
florian.save!

file_6 = URI.open('https://images.unsplash.com/photo-1520998116484-6eeb2f72b5b9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60/900x900')
justine = User.new(email: 'justine.del@hotmail.com', password: "123456", first_name: 'Justine' , last_name: 'De la Cour', location: 'Rue de Genève 23, 1003 Lausanne', phone_number: 0787824256 )
justine.profile_picture.attach(io: file_6, filename: 'nes.jpeg', content_type: 'image/jpeg')
justine.save!

file_7 = URI.open('https://images.unsplash.com/photo-1525545073321-a0c3bc5f4c1b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80/900x900')
kim = User.new(email: 'kim@k.ch', password: "123456", first_name: 'Kim' , last_name: 'Kardashian', location: 'Rue de Crissier 4b, 1020 Renens', phone_number: 0750580904 )
kim.profile_picture.attach(io: file_7, filename: 'nes.jpeg', content_type: 'image/jpeg')
kim.save!

file_8 = URI.open('https://images.unsplash.com/photo-1534399315465-2b91232de345?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60/900x900')
james = User.new(email: 'james@yahoo.com', password: "123456", first_name: 'James' , last_name: 'Bond', location: 'Place du Sauget 8, 1026 Echandens', phone_number: 0784567354 )
james.profile_picture.attach(io: file_8, filename: 'nes.jpeg', content_type: 'image/jpeg')
james.save!


puts 'Creating favours...'
# Favour.create!(name: 'Golden Retriever', description: 'Golden retriever needs a walk every monday', category: dog_walk, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Creux de Corsy 75, 1093 La Conversion', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Baby-Sitting', description: 'Urgent', category: kids, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue Verdaine 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Flower needs planting', description: 'I need some gardenias planted', category: garden, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin Davel 2, 1009 Pully', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Help needed', description: 'Can someone ride my horse, Lolita this week', category: horse, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de Beau-Rivage 21, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Lonely Kitten', description: 'Help! Lonely kitty needs company', category: cat, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue du Grand-Chêne 7-9, 1002 Lausanne', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Wild prairie', description: 'Lawn mower wanted', category: garden, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Closel 5, 1020 Renens', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Ride to GVA', description: 'Looking for someone to share the ride', category: car, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Cantonale 31, 1025 Saint-Sulpice', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Need to find day home for puppy', description: 'Little Dachshund needs to be kept while at work', category: dog_walk, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de la Croix-Blanche 33, 1066 Epalinges', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Triplets', description: 'Help...', category: kids, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Petite-Corniche 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Bush trimming', description: 'Shrubbery', category: garden, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Avenue Antoine-Michel-Servan 36, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Horse - Domino', description: 'Magnificient Stallion', category: horse, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Passage de la Couronne 2, 1110 Morges', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'House sitting while away', description: 'Going on holiday and need someone trustworthy to keep an eye on my house', category: clean, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Buchillon 41, 1162 Saint-Prex', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Website creation', description: 'Can someone help me with a new website for my flower-store?', category: it, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Vallaire 102, 1024 Ecublens', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Printer Set-up', description: 'Lost in a sea of cables behind my desk - help me', category: it, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de la Morgette 6, 1134 Chigny', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'German tutor wanted', description: 'For my son, 14ys', category: devoirs, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Promenthoux 8, 1197 Prangins', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Help with homework', description: 'Need help understanding my geometry homework', category: devoirs, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin Chenevière 2, 1279 Bogis-Bossey', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Cinema Opening', description: 'Can someone stand in line for me? Min 3 hours', category: other, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de Pont-Céard 12, 1290 Versoix', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Sock pick-up', description: 'Locked in bed - need someone to pick my stuff off the floor', category: other, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Founex 1, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))
# sleep 1
# Favour.create!(name: 'Video-game oponent', description: 'Mario Kart', category: other, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin des Bernodes, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))
# sleep 1

Favour.create!(name: 'Golden Retriever', description: 'Golden retriever needs a walk every monday', category: dog_walk, user: james, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5089513, longitude: 6.6582343,location: 'Chemin du Creux de Corsy 75, 1093 La Conversion', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Baby-Sitting', description: 'Urgent', category: kids, user: kim, start_time: Faker::Time.forward, end_time: Faker::Time.forward, latitude: 46.5026119, longitude: 6.6832795, location: 'Rue Verdaine 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Flower needs planting', description: 'I need some gardenias planted', category: garden, user: justine, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.3197734, longitude: 6.194338, location: 'Chemin Davel 2, 1009 Pully', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Help needed', description: 'Can someone ride my horse, Lolita this week', category: horse, user: georgina, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.508433, longitude: 6.6278714, location: 'Chemin de Beau-Rivage 21, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Lonely Kitten', description: 'Help! Lonely kitty needs company', category: cat, user: florian, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5194027 , longitude: 6.6285312, location: 'Rue du Grand-Chêne 7-9, 1002 Lausanne', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Wild prairie', description: 'Lawn mower wanted', category: garden, user: etienne, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5324247, longitude: 6.5889239, location: 'Chemin du Closel 5, 1020 Renens', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Ride to GVA', description: 'Looking for someone to share the ride', category: car, user: anais, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5167587, longitude:  6.564989, location: 'Route Cantonale 31, 1025 Saint-Sulpice', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Need to find day home for puppy', description: 'Little Dachshund needs to be kept while at work', category: dog_walk, user: hugo, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5484919, longitude: 6.671373, location: 'Route de la Croix-Blanche 33, 1066 Epalinges', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Triplets', description: 'Help...', category: kids, user: emilie, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5008672, longitude: 6.692892, location: 'Route Petite-Corniche 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Bush trimming', description: 'Shrubbery', category: garden, user: james, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5104554, longitude: 6.6325265, location: 'Avenue Antoine-Michel-Servan 36, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Horse - Domino', description: 'Magnificient Stallion', category: horse, user: hugo, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5084833, longitude: 6.4950129, location: 'Passage de la Couronne 2, 1110 Morges', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'House sitting while away', description: 'Going on holiday and need someone trustworthy to keep an eye on my house', category: clean, user: kim, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.4764808, longitude: 6.4425796, location: 'Route de Buchillon 41, 1162 Saint-Prex', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Website creation', description: 'Can someone help me with a new website for my flower-store?', category: it, user: justine, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5154453, longitude: 6.5458986, location: 'Route de Vallaire 102, 1024 Ecublens', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Printer Set-up', description: 'Lost in a sea of cables behind my desk - help me', category: it, user: florian, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.5173601, longitude: 6.477526, location: 'Chemin de la Morgette 6, 1134 Chigny', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'German tutor wanted', description: 'For my son, 14ys', category: devoirs, user: etienne, start_time: Faker::Time.forward, end_time: Faker::Time.forward, latitude: 46.3932958, longitude: 6.2549891, location: 'Route de Promenthoux 8, 1197 Prangins', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Help with homework', description: 'Need help understanding my geometry homework', category: devoirs, user: georgina, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.2667355, longitude: 6.1574039, location: 'Chemin Chenevière 2, 1279 Bogis-Bossey', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Cinema Opening', description: 'Can someone stand in line for me? Min 3 hours', category: other, user: emilie, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.3475617 , longitude: 6.1836419, location: 'Route de Founex 1, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Sock pick-up', description: 'Locked in bed - need someone to pick my stuff off the floor', category: other, user: kim, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  latitude: 46.2879653, longitude: 6.1596503, location: 'Chemin de Pont-Céard 12, 1290 Versoix', price_cents: Faker::Number.number(digits: 2))
sleep 1
Favour.create!(name: 'Video-game oponent', description: 'Mario Kart', category: other, user: james, start_time: Faker::Time.forward, end_time: Faker::Time.forward, latitude: 46.319367 , longitude: 6.1853344, location: 'Chemin des Bernodes, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))
sleep 1
puts 'Finished!'
