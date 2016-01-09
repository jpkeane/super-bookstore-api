class AddRentToRentals < ActiveRecord::Migration
  def change
    add_column :rentals, :daily_rent, :float, null: false
    add_column :rentals, :rent_payment_period, :integer, null: false
  end
end
