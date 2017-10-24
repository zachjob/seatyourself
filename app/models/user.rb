class User < ApplicationRecord
  has_many :reservations
  has_many :restaurants
  has_many :reservation_restaurants, through: :reservations, source: :restaurant


  has_secure_password
end
