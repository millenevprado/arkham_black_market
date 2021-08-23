class EvilArtifact < ApplicationRecord
  belongs_to :user
  validates :name, :description, :price, presence: true
  validates :description, length: { minimum: 10 }
  validates :price, numericality: { only_float: true }
end
