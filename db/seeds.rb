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
user = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
user_1 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
user_2 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
user_3 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))
user_4 = User.create!(email: Faker::Internet.email, password: Faker::Internet.password(min_length: 8))

puts 'Creating favours...'
Favour.create!(name: 'dog-walk', description: 'Golden retriever needs a walk', category: dog_walk, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'baby-sit', description: 'Urgent', category: kids, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'flower maintenance', description: 'I need some gardenias planted', category: garden, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Lolita', description: 'Can someone ride my horse this week', category: horse, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Friendly kitten', description: 'Help! Lonely kitty', category: cat, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Wild prairie', description: 'Lawn mower wanted', category: lawn, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Ride to GVA', description: 'Looking for someone to share the ride', category: car, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Puppy!', description: 'Regular tuesday walks with Rex', category: dog_walk, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Triplets', description: 'Help...', category: kids, user: user, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Bush trimming', description: 'Shrubbery', category: garden, user: user_1, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: 'Domino', description: 'Magnificient Stallion', category: horse, user: user_2, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))
Favour.create!(name: '7 cats', description: 'Going on holiday', category: cat, user: user_3, start_time: Faker::Time.forward, end_time: Faker::Time.forward,  location: 'Lausanne', price: Faker::Number.number(digits: 2))

puts 'Finished!'
