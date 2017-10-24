class DropAndMakeRestaurantsTable < ActiveRecord::Migration[5.0]
  def change
    drop_table :restaurants

    create_table :restaurants do |t|
      t.string :name
      t.integer :open_time
      t.integer :close_time
      t.integer :seats
      t.string :address
      t.integer :user_id
      t.string  :price_range
      t.string  :neighbourhood
      t.string  :summary
      t.string  :menu
      t.integer :min_seating
      t.integer :max_seating

      t.timestamps
    end
  end
end
