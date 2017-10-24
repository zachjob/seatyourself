class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant

  validate :not_past_date
  # validate :not_past_time

  def not_past_date
    if self.date < Date.today
      errors.add(:date, 'not in past')
    elsif nil
      errors.add(:date, 'needs dat  e')
    end
  end

  # def not_past_time
  #   if self.time < Time.now
  #     errors.add(:time, 'not in past')
  #   end
  # end

  # As a customer, if I try to make a reservation at a time when a restaurant is already
  # at max capacity, the reservation will not be made and I will be shown a message indicating why.

  def self.book_seats
  # when reservation is made, seats -= party_size


  end

  def max_capacity

  end
end
