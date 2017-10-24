class User < ApplicationRecord
  has_many :reservations
  has_many :restaurants
  has_many :reservation_restaurants, through: :reservations, source: :restaurant

  def self.order_by_loyalty
    User.order("loyalty_points DESC")
  end

  has_secure_password
end
