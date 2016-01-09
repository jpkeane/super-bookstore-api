class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :name, null: false
      t.string :address, null: false
      t.string :telephone, null: false

      t.timestamps null: false
    end
  end
end
