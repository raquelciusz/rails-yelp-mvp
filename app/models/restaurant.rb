class Restaurant < ApplicationRecord
  validates :name, :address, presence: true
  has_many :reviews, dependent: :destroy

  CATEGORY = %w[chinese italian japanese french belgian]
  validates :category, inclusion: { in: CATEGORY }

  RATING = [0, 1, 2, 3, 4, 5]
  validates :rating, inclusion: { in: RATING }
  validates :rating, numericality: { only_integer: true }
end
