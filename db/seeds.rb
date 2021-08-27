require "open-uri"

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
penguin_photo = URI.open('https://static.wikia.nocookie.net/batman/images/9/97/Penguin.png/revision/latest?cb=20150503152433&path-prefix=pt-br')
bane_photo = URI.open('https://kanto.legiaodosherois.com.br/w760-h398-gnw-cfill-q80/wp-content/uploads/2016/09/legiao_2HTuhnEVkj8CzBZy3Pi_K6cd0mpfoUONsYFLw7r4b9.jpg.jpeg')
joker_photo = URI.open('https://comicvine.gamespot.com/a/uploads/scale_medium/12/124259/7538232-three-jokers-1-cvr-fnl-1583776056592.jpg')
scarecrow_photo = URI.open('https://www.electricferret.com/static/images/cbub/cbub_contender_image/1/1967/1967.jpg')
harley_quinn_photo = URI.open('https://avatarfiles.alphacoders.com/158/158103.jpg')
riddler_photo = URI.open('https://static.wikia.nocookie.net/batman/images/3/32/Charada.png/revision/latest/scale-to-width-down/265?cb=20150430140527&path-prefix=pt-br')
two_face_photo = URI.open('https://imgix-media.wbdndc.net/cms/filer_public/1d/38/1d388881-a9d2-47fc-bd18-e3a93b548577/twoface_thumbnail_v2.jpg')
catwoman_photo = URI.open('http://www.comicbookreligion.com/img/c/a/Catwoman_Selina_Kyle.jpg')
poison_ivy_photo = URI.open('https://static.wikia.nocookie.net/batman/images/5/53/Poison_ivy_fireworks.jpg/revision/latest/top-crop/width/360/height/450?cb=20191212215459')

penguin = User.create!(codename: 'Penguin', email: 'penguin@gotham.com', password: '123456')
bane = User.create!(codename: 'Bane', email: 'bane@gotham.com', password: '123456')
joker = User.create!(codename: 'Joker', email: 'joker@gotham.com', password: '123456')
scarecrow = User.create!(codename: 'Scarecrow', email: 'scarecrow@gotham.com', password: '123456')
harley_quinn = User.create!(codename: 'Harley Quinn', email: 'harleyquinn@gotham.com', password: '123456')
riddler = User.create!(codename: 'Riddler', email: 'riddler@gotham.com', password: '123456')
two_face = User.create!(codename: 'Two Face', email: 'twoface@gotham.com', password: '123456')
catwoman = User.create!(codename: 'Catwoman', email: 'catwoman@gotham.com', password: '123456')
poison_ivy = User.create!(codename: 'Poison Ivy', email: 'poisonivy@gotham.com', password: '123456')

penguin.photo.attach(io: penguin_photo, filename: "penguin.png", content_type: 'image/png')
penguin.save
bane.photo.attach(io: bane_photo, filename: "bane.png", content_type: 'image/png')
bane.save
joker.photo.attach(io: joker_photo, filename: "joker.png", content_type: 'image/png')
joker.save
scarecrow.photo.attach(io: scarecrow_photo, filename: "scarecrow.png", content_type: 'image/png')
scarecrow.save
harley_quinn.photo.attach(io: harley_quinn_photo, filename: "harley_quinn.png", content_type: 'image/png')
harley_quinn.save
riddler.photo.attach(io: riddler_photo, filename: "riddler.png", content_type: 'image/png')
riddler.save
two_face.photo.attach(io: two_face_photo, filename: "two_face.png", content_type: 'image/png')
two_face.save
catwoman.photo.attach(io: catwoman_photo, filename: "catwoman.png", content_type: 'image/png')
catwoman.save
poison_ivy.photo.attach(io: poison_ivy_photo, filename: "poison_ivy.png", content_type: 'image/png')
poison_ivy.save

puts 'Creating products...'

EvilArtifact.create!(
  name: 'Dynamite',
  description: 'For the moments you want to watch the whole world burn, but you want it to be fast and simple.',
  category: 'Explosives',
  price: 100.50,
  lethality: 3,
  versatility: 'One-Handed',
  reach: 20,
  user: joker
)

EvilArtifact.create!(
  name: 'Grenade',
  description: 'Very powerful explosive and easy to handle. The best on the market.',
  category: 'Explosives',
  price: 150.50,
  lethality: 4,
  versatility: 'One-Handed',
  reach: 15,
  user: penguin
)

EvilArtifact.create!(
  name: 'Nitrocellulose',
  description: 'Highly flammable compound, you can take your time and make an entire hospital catch on fire.',
  category: 'Explosives',
  price: 150.50,
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 30,
  user: joker
)

EvilArtifact.create!(
  name: 'TNT',
  description: 'Explosive with great chemical stability. With certain handling properties TNT is considered to be the standard comparative convention of bombs and asteroid impacts. Cool huh? Bat will need to call his friends to handle this',
  category: 'Explosives',
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 40,
  price: 150.50,
  user: joker
)

EvilArtifact.create!(
  name: 'Super-soldier Drug',
  description: 'In the right dosage, increases physical strength to the point where it is possible to break a skull with your bare hands.',
  price: 250.25,
  category: 'Poison',
  lethality: 0,
  versatility: 'One-Handed',
  reach: 0,
  user: bane
)

EvilArtifact.create!(
  name: 'Enchantment Drug',
  description: "With this drug you can control people's minds and make them do whatever you want",
  price: 700.25,
  category: 'Poison',
  lethality: 0,
  versatility: 'One-Handed',
  reach: 0,
  user: poison_ivy
)

EvilArtifact.create!(
  name: 'Joker Venom',
  description: "Is a toxin, dispersed as a gas that makes victims laugh uncontrollably. Why so serious?",
  price: 600.29,
  category: 'Poison',
  lethality: 5,
  versatility: 'One-Handed',
  reach: 0,
  user: joker
)

EvilArtifact.create!(
  name: 'Thompson Machine Gun',
  description: 'An elegant and letal weapon, easy to load.',
  price: 250.15,
  category: 'Fire Guns',
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 30,
  user: penguin
)

EvilArtifact.create!(
  name: 'Handgun (.44 Magnum)',
  description: 'Simple and effective pistol, ideal for everyday use',
  price: 200.19,
  category: 'Fire Guns',
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 20,
  user: two_face
)

EvilArtifact.create!(
  name: 'Red Hood Dual Pistols',
  description: 'Oops!...I stole it again. Twin semi-automatic pistols that Jason uses in most of his battles.',
  price: 220.15,
  category: 'Fire Guns',
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 30,
  user: catwoman
)

EvilArtifact.create!(
  name: 'Umbrella Gun',
  description: 'Ideal for a shooting day in the rain.',
  price: 220.15,
  category: 'Fire Guns',
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 30,
  user: penguin
)

EvilArtifact.create!(
  name: 'Fear Gas',
  description: 'My signature weapon, it induced involuntary and sometimes irrational fear in its victims.',
  category: 'Hallucinogenic',
  price: 350.88,
  lethality: 0,
  versatility: 'One-Handed',
  reach: 0,
  user: scarecrow
)

EvilArtifact.create!(
  name: 'Pheromone Pill',
  description: 'Wonderful tool to lure your victims into a death trap',
  category: 'Hallucinogenic',
  price: 350.88,
  lethality: 0,
  versatility: 'One-Handed',
  reach: 0,
  user: poison_ivy
)

EvilArtifact.create!(
  name: 'Nightmare',
  description: 'To trap victims in an illusion of their worst nightmares.',
  category: 'Hallucinogenic',
  price: 350.88,
  lethality: 0,
  versatility: 'Two-Handed',
  reach: 0,
  user: scarecrow
)

EvilArtifact.create!(
  name: 'Baseball Bat',
  description: "A simple and light everyday weapon, ideal for walking around in public without attracting the attention of authorities. With this weapon no one will 'bat' an eye ;)",
  category: 'Meele Weapon',
  price: 180.82,
  lethality: 1,
  versatility: 'Two-Handed',
  reach: 2,
  user: harley_quinn
)

EvilArtifact.create!(
  name: 'Leather Whip',
  description: "You can never go wrong with a whip. Ideal for combat or even for a hot private moment ;)",
  category: 'Meele Weapon',
  price: 169.69,
  lethality: 2,
  versatility: 'One-Handed',
  reach: 3,
  user: catwoman
)

EvilArtifact.create!(
  name: 'Awesome Mallet',
  description: "You can crush some stuff. You can go 'pow, pow, pow' and the person would go 'Ah Ah Ahhh'.",
  category: 'Meele Weapon',
  price: 190.89,
  lethality: 2,
  versatility: 'Two-Handed',
  reach: 1,
  user: harley_quinn
)

EvilArtifact.create!(
  name: "Bat's Tools",
  description: "Have you ever dreamed of using batman's equipment? Say no more! You can take your pick between Batarang, Shark Repellent Bat Spray and Shock Gloves. I know the names are cheesy but the products are good.",
  category: 'Meele Weapon',
  price: 650.49,
  lethality: 2,
  versatility: 'Two-Handed',
  reach: 5,
  user: catwoman
)

EvilArtifact.create!(
  name: 'Win-Win Puzzle',
  description: "If your enemy deciphers the puzzle he dies and if he can't he dies too.",
  category: 'Pull or Prank',
  price: 100.55,
  lethality: 5,
  versatility: 'Two-Handed',
  reach: 30,
  user: riddler
)

EvilArtifact.create!(
  name: 'Pretty Pink Bat',
  description: "Set of 50 pink batman costumes. Ideal for distracting the police in a bank robbery. It goes well in any heist, besides being super cute.",
  category: 'Pull or Prank',
  price: 180.66,
  lethality: 0,
  versatility: 'Two-Handed',
  reach: 0,
  user: harley_quinn
)

EvilArtifact.create!(
  name: 'Fake Death Certificate',
  description: "Fake death certificate made to perfection, the Gotham authorities will never be suspicious. You can disappear for a while, take on another identity and you won't have any problems.",
  category: 'Pull or Prank',
  price: 250.56,
  lethality: 0,
  versatility: 'One-Handed',
  reach: 0,
  user: two_face
)

EvilArtifact.create!(
  name: 'Robbery Kit',
  description: "Need cash? Why not rob a jewelry store or a bank?! You can take your pick, with this kit you can go through any security they may have.",
  category: 'Pull or Prank',
  price: 150.25,
  lethality: 0,
  versatility: 'Two-Handed',
  reach: 0,
  user: catwoman
)

puts "#{EvilArtifact.count} products created!"
puts 'Finished!'
