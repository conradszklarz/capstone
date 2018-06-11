class CreateMaintenanceEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenance_events do |t|
      t.integer :id
      t.integer :car_id
      t.string :provider
      t.decimal :price
      t.datetime :date
      t.bit :complete
      t.decimal :mileage

      t.timestamps
    end
  end
end
