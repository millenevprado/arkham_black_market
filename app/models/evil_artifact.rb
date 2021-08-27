class EvilArtifact < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :users, through: :orders
  has_many_attached :photos

  CATEGORIES = ['Poison', 'Fire Guns', 'Meele Weapon', 'Hallucinogenic', 'Explosives', 'Pull or Prank'].freeze
  VERSATILITY = ['One-Handed', 'Two-Handed']
  validates :name, :description, :price, :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :lethality, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :price, numericality: { only_float: true }
  validates :category, inclusion: { in: CATEGORIES }
  validates :versatility, inclusion: { in: VERSATILITY }
end
