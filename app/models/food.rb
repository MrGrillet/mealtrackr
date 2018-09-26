class Food < ApplicationRecord
  has_many :food_items
  has_many :meals, through: :food_items
  belongs_to :food_category

end
