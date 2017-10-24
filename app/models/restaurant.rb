class Restaurant < ApplicationRecord
  has_many :reservations
  has_many :users, through: :reservations
  belongs_to :user

  validates :name, :open_time, :close_time, :seats, :address, :price_range, :summary, :menu, :min_seating, :max_seating, presence: true 


end
