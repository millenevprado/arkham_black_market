class EvilArtifact < ApplicationRecord
  belongs_to :user
  has_many :users, through: :orders

  CATEGORY = ['Poison', 'Fire Guns', 'Meele Guns', 'Hallucinogenic', 'Explosives', 'Pull or Prank'].freeze
  validates :name, :description, :price, :category, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, numericality: { only_float: true }
  validates :category, inclusion: { in: CATEGORY }
end
