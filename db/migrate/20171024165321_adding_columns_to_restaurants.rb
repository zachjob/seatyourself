class AddingColumnsToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :neighbourhood, :string
    add_column :restaurants, :summary, :string
    add_column :restaurants, :menu, :string
    add_column :restaurants, :min_seating, :integer
    add_column :restaurants, :max_seating, :integer
  end
end
