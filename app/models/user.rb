class User < ApplicationRecord
  has_many :meals
  has_many :feelings

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         # Add friendly_id


end
