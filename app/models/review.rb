class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { only_integer: true }, presence: true, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :restaurant, presence: true
end
