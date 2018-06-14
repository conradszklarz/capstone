class ChangeCompleteBitToBoolean < ActiveRecord::Migration[5.1]
  def change
    remove_column :maintenance_events, :complete, :bit
    add_column :maintenance_events, :complete, :boolean
  end
end
