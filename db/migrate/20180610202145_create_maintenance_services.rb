class CreateMaintenanceServices < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenance_services do |t|
      t.integer :id
      t.integer :maintenance_event_id
      t.integer :service_id

      t.timestamps
    end
  end
end
