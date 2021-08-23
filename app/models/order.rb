class Order < ApplicationRecord
  belongs_to :user
  belongs_to :evil_artifacts
end
