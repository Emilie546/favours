require 'faker'

puts 'Cleaning database...'
Favour.destroy_all
Category.destroy_all
User.destroy_all

puts 'Creating categories...'
dog_walk = Category.create!(name: 'dog walking')
kids = Category.create!(name: 'baby-sitting')
garden = Category.create!(name: 'gardening')
horse = Category.create!(name: 'horse riding')
cat = Category.create!(name: 'cat-sitting')
lawn = Category.create!(name: 'lawn-mowing')
car = Category.create!(name: 'ride-sharing')

puts 'Creating users...'
user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: 'Emilie', last_name: 'Keller', photo: 'photo_maeva.jpg')
user_1 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: 'Georgina', last_name: 'Morin', photo: 'Photo_Georgina')
user_2 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: 'Hugo', last_name: 'Mori', photo: 'photo_maeva.jpg')
user_3 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: 'Maeva', last_name: 'Blanc', photo: 'photo_maeva.jpg')
user_4 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8), first_name: 'Elise', last_name: 'Dubois', photo: 'Photo_Georgina')

puts 'Creating favours...'
Favour.create!(name: 'dog-walk', description: 'Golden retriever needs a walk', category: dog_walk, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Creux de Corsy 75, 1093 La Conversion', price_cents: 7000)
Favour.create!(name: 'baby-sit', description: 'Urgent', category: kids, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue Verdaine 3, 1095 Lutry', price_cents: 7000)
Favour.create!(name: 'flower maintenance', description: 'I need some gardenias planted', category: garden, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin Davel 2, 1009 Pully', price_cents: 7000)
Favour.create!(name: 'Lolita', description: 'Can someone ride my horse this week', category: horse, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin de Beau-Rivage 21, 1006 Lausanne', price_cents: 7000)
Favour.create!(name: 'Friendly kitten', description: 'Help! Lonely kitty', category: cat, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Rue du Grand-Chêne 7-9, 1002 Lausanne', price_cents: 7000)
Favour.create!(name: 'Wild prairie', description: 'Lawn mower wanted', category: lawn, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Chemin du Closel 5, 1020 Renens', price_cents: 7000)
Favour.create!(name: 'Ride to GVA', description: 'Looking for someone to share the ride', category: car, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Cantonale 31, 1025 Saint-Sulpice', price_cents: 7000)
Favour.create!(name: 'Puppy!', description: 'Regular tuesday walks with Rex', category: dog_walk, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de la Croix-Blanche 33, 1066 Epalinges', price_cents: 7000)
Favour.create!(name: 'Triplets', description: 'Help...', category: kids, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route Petite-Corniche 3, 1095 Lutry', price_cents: 7000)
Favour.create!(name: 'Bush trimming', description: 'Shrubbery', category: garden, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Avenue Antoine-Michel-Servan 36, 1006 Lausanne', price_cents: 7000)
Favour.create!(name: 'Domino', description: 'Magnificient Stallion', category: horse, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Passage de la Couronne 2, 1110 Morges', price_cents: 7000)
Favour.create!(name: '7 cats', description: 'Going on holiday', category: cat, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Route de Buchillon 41, 1162 Saint-Prex', price_cents: 7000)

puts 'Finished!'
