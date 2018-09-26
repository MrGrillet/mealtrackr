class Food < ApplicationRecord
  has_many :food_items
  has_many :meals, through: :food_items


end
