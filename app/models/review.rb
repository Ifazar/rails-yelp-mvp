class Review < ApplicationRecord
  belongs_to :restaurant

  validates_associated :restaurant
  validates :restaurant_id, :content, :rating, presence: true
  validates :rating, numericality: { only_integer: true, in: (0..5) }
end
