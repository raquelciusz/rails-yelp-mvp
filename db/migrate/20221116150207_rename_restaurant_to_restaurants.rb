class RenameRestaurantsToRestaurant < ActiveRecord::Migration[7.0]
  def change
    rename_table :restaurants, :restaurant
  end
end
