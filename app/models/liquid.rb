class Liquid < ApplicationRecord
  belongs_to :user
  belongs_to :liquid_category
end
