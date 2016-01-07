class CreateRentals < ActiveRecord::Migration
  def change
    create_table :rentals do |t|
      t.string :title, null: false
      t.string :city, null: false
      t.belongs_to :property_type, index: true, foreign_key: true
      t.string :image
      t.integer :bedrooms, null: false

      t.timestamps null: false
    end
  end
end
