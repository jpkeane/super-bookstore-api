class AddLandlordIdToRentals < ActiveRecord::Migration
  def change
    add_reference :rentals, :landlord, index: true, foreign_key: true, null: false
  end
end
