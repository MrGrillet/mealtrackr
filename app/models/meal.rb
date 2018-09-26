class Meal < ApplicationRecord
  belongs_to :user
  has_many :food_items
  has_many :foods, through: :food_items


  scope :sorted, -> { order(created_at: :desc) }
  private

end
