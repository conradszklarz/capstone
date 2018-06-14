class CreateCarParts < ActiveRecord::Migration[5.1]
  def change
    create_table :car_parts do |t|
      t.integer :maintenance_event_id
      t.datetime :date
      t.string :part_number
      t.decimal :price

      t.timestamps
    end
  end
end
