class Meal < ApplicationRecord
  # has_many :post_categories
  # has_many :categories, through: :post_categories


  scope :sorted, -> { order(created_at: :desc) }
  private

end
