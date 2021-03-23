class AddOpinionsForeignKeyToRestaurant < ActiveRecord::Migration[6.0]
  def change
    add_reference :opinions, :restaurant, foreign_key: true
  end
end
