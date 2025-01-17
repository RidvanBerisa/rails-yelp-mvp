class Review < ApplicationRecord
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :rating, presence: true, numericality:  { only_integer: true }, inclusion: { in: (0..5).to_a }
end
