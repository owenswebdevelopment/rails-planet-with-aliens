class Alien < ApplicationRecord
  belongs_to :planet
  validates :name, presence: true, uniqueness: true
  validates :color, presence: true
  validates :height, numericality: { greater_than: 0 }
  validates :age, presence: true, numericality: { greater_than_or_equal_to: 0 }
  has_one_attached :photo
end
