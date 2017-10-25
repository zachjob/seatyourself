class ChangeReservationTimes < ActiveRecord::Migration[5.0]
  def change
    change_column :reservations, :time, :time
  end
end
