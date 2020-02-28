require 'faker'
require 'open-uri'

puts 'Cleaning database...'
Favour.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating categories...'
dog_walk = Category.create!(name: 'Dog-Walking')
kids = Category.create!(name: 'Baby-Sitting')
garden = Category.create!(name: 'Gardening')
horse = Category.create!(name: 'Horses')
cat = Category.create!(name: 'Cat-Sitting')
it = Category.create!(name: 'Tech Support')
car = Category.create!(name: 'Ride-Share')
clean = Category.create!(name: 'House Keeping')
devoirs = Category.create!(name: 'Tutoring')
company = Category.create!(name: 'Elderly Care')
main = Category.create!(name: 'Maintenance')
other = Category.create!(name: 'Other')


puts 'Creating users...'
# user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_1 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_2 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_3 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_4 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
# user_4 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )

file = URI.open('https://source.unsplash.com/collection/147385')
user = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user.profile_picture.attach(io: file, filename: 'nes.jpeg', content_type: 'image/jpeg')
user.save!

file_1 = URI.open('https://source.unsplash.com/collection/147385')
user_1 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user_1.profile_picture.attach(io: file_1, filename: 'nes.jpeg', content_type: 'image/jpeg')
user_1.save!

file_2 = URI.open('https://source.unsplash.com/collection/147385')
user_2 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user_2.profile_picture.attach(io: file_2, filename: 'nes.jpeg', content_type: 'image/jpeg')
user_2.save!

file_3 = URI.open('https://source.unsplash.com/collection/147385')
user_3 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user_3.profile_picture.attach(io: file_3, filename: 'nes.jpeg', content_type: 'image/jpeg')
user_3.save!

file_4 = URI.open('https://source.unsplash.com/collection/147385')
user_4 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user_4.profile_picture.attach(io: file_4, filename: 'nes.jpeg', content_type: 'image/jpeg')
user_4.save!

file_5 = URI.open('https://source.unsplash.com/collection/147385')
user_5 = User.new(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: Faker::Name.first_name , last_name: Faker::Name.last_name )
user_5.profile_picture.attach(io: file_5, filename: 'nes.jpeg', content_type: 'image/jpeg')
user_5.save!



puts 'Creating favours...'

Favour.create!(name: 'Golden Retriever', description: 'Golden retriever needs a walk every monday', category: dog_walk, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Creux de Corsy 75, 1093 La Conversion', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Baby-Sitting', description: 'Urgent', category: kids, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue Verdaine 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Flower needs planting', description: 'I need some gardenias planted', category: garden, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin Davel 2, 1009 Pully', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Help needed', description: 'Can someone ride my horse, Lolita this week', category: horse, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de Beau-Rivage 21, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Lonely Kitten', description: 'Help! Lonely kitty needs company', category: cat, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue du Grand-Chêne 7-9, 1002 Lausanne', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Wild prairie', description: 'Lawn mower wanted', category: garden, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Closel 5, 1020 Renens', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Ride to GVA', description: 'Looking for someone to share the ride', category: car, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Cantonale 31, 1025 Saint-Sulpice', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Need to find day home for puppy', description: 'Little Dachshund needs to be kept while at work', category: dog_walk, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de la Croix-Blanche 33, 1066 Epalinges', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Triplets', description: 'Help...', category: kids, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Petite-Corniche 3, 1095 Lutry', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Bush trimming', description: 'Shrubbery', category: garden, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Avenue Antoine-Michel-Servan 36, 1006 Lausanne', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Horse - Domino', description: 'Magnificient Stallion', category: horse, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Passage de la Couronne 2, 1110 Morges', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'House sitting while away', description: 'Going on holiday and need someone trustworthy to keep an eye on my house', category: clean, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Buchillon 41, 1162 Saint-Prex', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Website creation', description: 'Can someone help me with a new website for my flower-store?', category: it, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Vallaire 102, 1024 Ecublens', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Printer Set-up', description: 'Lost in a sea of cables behind my desk - help me', category: it, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de la Morgette 6, 1134 Chigny', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'German tutor wanted', description: 'For my son, 14ys', category: devoirs, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Promenthoux 8, 1197 Prangins', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Help with homework', description: 'Need help understanding my geometry homework', category: devoirs, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin Chenevière 2, 1279 Bogis-Bossey', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Cinema Opening', description: 'Can someone stand in line for me? Min 3 hours', category: other, user: user_4, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de Pont-Céard 12, 1290 Versoix', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Sock pick-up', description: 'Locked in bed - need someone to pick my stuff off the floor', category: other, user: user_5, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Founex 1, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))

Favour.create!(name: 'Video-game oponent', description: 'Mario Kart', category: other, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin des Bernodes, 1296 Coppet', price_cents: Faker::Number.number(digits: 2))


puts 'Finished!'
