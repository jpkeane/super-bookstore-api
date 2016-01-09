class CreateRentalStates < ActiveRecord::Migration
  def change
    create_table :rental_states do |t|
      t.string :name, null: false
      t.string :display_colour

      t.timestamps null: false
    end
  end
end
