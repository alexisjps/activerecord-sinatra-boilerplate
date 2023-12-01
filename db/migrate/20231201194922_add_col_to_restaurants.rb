class AddColToRestaurants < ActiveRecord::Migration[7.1]
  def change
    add_column :restaurants, :speciality, :string
  end
end