class Planet < ApplicationRecord
  has_many :aliens
  validates :name, presence: true
  validates :description, presence: true
  validates :size, length: { maximum: 500 }
  validates :alien_count, numericality: { greater_than_or_equal_to: 0 }
  validates :rings, numericality: { greater_than_or_equal_to: 3 }
  has_one_attached :photo
end
