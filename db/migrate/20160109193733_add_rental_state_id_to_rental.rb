class AddRentalStateIdToRental < ActiveRecord::Migration
  def change
    add_reference :rentals, :rental_state, index: true, foreign_key: true, null: false
  end
end
