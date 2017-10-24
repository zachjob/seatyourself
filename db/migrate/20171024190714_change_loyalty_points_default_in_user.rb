class ChangeLoyaltyPointsDefaultInUser < ActiveRecord::Migration[5.0]
  def change
    change_column_default :users, :loyalty_points, 0
  end
end
