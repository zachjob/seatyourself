class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  # As a customer, if I try to make a reservation at a time when a restaurant is already
  # at max capacity, the reservation will not be made and I will be shown a message indicating why.

  validate :book_seats

  def book_seats
    booked_seats = restaurant.reservations.where(time == reservation.time).sum(:party_size)
    available_seats = restaurant.seats - booked_seats

    if reservation.party_size <= available_seats
    else
      flash[:notice] = "Sorry, we do not have any tables available at that time."
    end
  end

  def max_capacity

  end

  def self.refresh_bookings
    today = Date.today.to_s
    @@bookings.where('date < ?', today).destroy_all
  end
end
