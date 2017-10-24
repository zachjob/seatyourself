class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validate :not_past_date
  validate :not_past_time
  validate :book_seats

  def not_past_date
    return unless date
    if date < Date.today
      errors.add(:date, 'not in past')
    end
  end

  def not_past_time
    return unless date
    if self.time < Time.now.hour.to_i && date <= Date.today
      errors.add(:time, 'not in past')
    end
  end

  # As a customer, if I try to make a reservation at a time when a restaurant is already
  # at max capacity, the reservation will not be made and I will be shown a message indicating why.

  def book_seats
    booked_seats = Reservation.where(time: time).where(restaurant_id: restaurant_id).sum(:party_size)
    available_seats = Restaurant.find(restaurant_id).seats - booked_seats

    if party_size <= available_seats
    else
      self.errors.add(:base, "Sorry, we are do have any tables available at that time.")
    end
  end
end
