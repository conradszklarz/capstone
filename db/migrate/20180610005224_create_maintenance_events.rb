class CreateMaintenanceEvents < ActiveRecord::Migration[5.1]
  def change
    create_table :maintenance_events do |t|
      t.string :event
      t.string :action

      t.timestamps
    end
  end
end
