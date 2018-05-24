class Game < ApplicationRecord
  validates :title, uniqueness: true
  validates_associated :players
  has_many :players
end
