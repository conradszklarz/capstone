class AddAlertMessageToServices < ActiveRecord::Migration[5.1]
  def change
    add_column :services, :alert_message, :text
  end
end
