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

penguin = User.create!(codename: 'Penguin', email: 'penguin@gotham.com', password: '123456')
bane = User.create!(codename: 'Bane', email: 'bane@gotham.com', password: '123456')
joker = User.create!(codename: 'Joker', email: 'joker@gotham.com', password: '123456')
scarecrow = User.create!(codename: 'Scarecrow', email: 'scarecrow@gotham.com', password: '123456')
harley_quinn = User.create!(codename: 'Harley Quinn', email: 'harleyquinn@gotham.com', password: '123456')
riddler = User.create!(codename: 'Riddler', email: 'riddler@gotham.com', password: '123456')
puts 'Creating products...'

EvilArtifact.create!(
  name: 'Dynamite',
  description: 'For the moments you want to watch the whole world burn, but you want it to be fast and simple ;)',
  category: 'Explosives',
  price: 100.50,
  user: joker
)
EvilArtifact.create!(
  name: 'Super-soldier drug',
  description: 'In the right dosage, increases physical strength to the point where it is possible to break a skull with your bare hands.',
  price: 150.25,
  category: 'Poison',
  user: bane
)
EvilArtifact.create!(
  name: 'Machine Gun',
  description: 'An elegant and letal weapon, easy to load.',
  price: 250.10,
  category: 'Fire Guns',
  user: penguin
)
EvilArtifact.create!(
  name: 'Nightmare',
  description: 'To bring life your enemies worst nightmares',
  category: 'Hallucinogenic',
  price: 350.00,
  user: scarecrow
)

EvilArtifact.create!(
  name: 'Baseball Bat',
  description: "A simple and light everyday weapon, ideal for walking around in public without attracting the attention of authorities. With this weapon no one will 'bat' an eye",
  category: 'Meele Weapon',
  price: 100,
  user: harley_quinn
)

EvilArtifact.create!(
  name: 'Win-Win puzzle',
  description: "If your enemy deciphers the puzzle he dies and if he can't he dies too.",
  category: 'Pull or Prank',
  price: 100,
  user: riddler
)

puts "#{EvilArtifact.count} products created!"
puts 'Finished!'
