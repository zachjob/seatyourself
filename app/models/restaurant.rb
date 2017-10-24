class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user


  
  # def method
  #   if reservation.date.party_size <= restaurant.seats
  #     restaurants.seats -= reservation.date.party_size
  #   else
  #     flash[:notice] = "We're fully booked on that night"
  #   end
  # end



end
