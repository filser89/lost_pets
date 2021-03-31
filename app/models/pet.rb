class Pet < ApplicationRecord
  SPECIES = %w(cat dog unicorn dragon pig)

  validates :name, :color, :found_on, presence: true
  validates :species, inclusion: { in: SPECIES }
end
