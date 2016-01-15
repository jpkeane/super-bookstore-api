class RemoveDisplayColourFromRentalState < ActiveRecord::Migration
  def change
    remove_column :rental_states, :display_colour
  end
end
