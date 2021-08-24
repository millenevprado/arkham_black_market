# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
EvilArtifact.destroy_all
User.destroy_all

puts 'Creating users...'

penguin = User.create!(codename: 'Penguin', email: 'penguin@gotham.com', password: '123321')
puts 'Creating products...'

EvilArtifact.create!(
  name: 'Gas Bomb',
  description: 'A gas bomb to mess with your enemies',
  category: 'Explosives', price: 100.50, user: penguin
)
EvilArtifact.create!(
  name: 'Poison',
  description: 'Death poison instante kill',
  price: 150.25,
  category: 'Poison',
  user: penguin
)
EvilArtifact.create!(
  name: 'Machine Gun',
  description: 'A letal weapon, easy to load',
  price: 250.10,
  category: 'Fire Guns',
  user: penguin
)
EvilArtifact.create!(
  name: 'hallucinogenic',
  description: 'to bring your enemies their worst nightmares',
  category: 'Hallucinogenic',
  price: 350.00,
  user: penguin
)

puts "#{EvilArtifact.count} products created!"
puts 'Finished!'
