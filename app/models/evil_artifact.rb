class EvilArtifact < ApplicationRecord
  belongs_to :user
  has_many :users, through: :orders
  has_many_attached :photos

  CATEGORIES = ['Poison', 'Fire Guns', 'Meele Weapon', 'Hallucinogenic', 'Explosives', 'Pull or Prank'].freeze
  validates :name, :description, :price, :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, numericality: { only_float: true }
  validates :category, inclusion: { in: CATEGORIES }
end
