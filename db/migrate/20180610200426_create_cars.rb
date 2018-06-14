class CreateCars < ActiveRecord::Migration[5.1]
  def change
    create_table :cars do |t|
      
      t.integer :user_id
      t.integer :year
      t.string :make
      t.string :model
      t.integer :mileage

      t.timestamps
    end
  end
end
