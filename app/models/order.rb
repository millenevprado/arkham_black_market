class Order < ApplicationRecord
  belongs_to :user
  belongs_to :evil_artifact

  validates :quantity, presence: true

  def total
    evil_artifact.price * quantity
  end
end
