class CreateCarServices < ActiveRecord::Migration[5.1]
  def change
    create_table :car_services do |t|
      
      t.integer :car_id
      t.integer :service_id

      t.timestamps
    end
  end
end
