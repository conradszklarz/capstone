class CreateServices < ActiveRecord::Migration[5.1]
  def change
    create_table :services do |t|
      t.integer :id
      t.string :name
      t.decimal :mileage_marker
      t.integer :time_marker
      t.string :time_increment

      t.timestamps
    end
  end
end
