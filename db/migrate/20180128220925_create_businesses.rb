class CreateBusinesses < ActiveRecord::Migration[5.1]
  def change
    create_table :businesses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :wifi
      t.string :phone
      t.string :bathroom

      t.timestamps
    end
  end
end
