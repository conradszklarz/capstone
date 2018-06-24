class Car < ApplicationRecord
  belongs_to :user
  has_many :maintenance_events
  has_many :car_parts, through: :maintenance_events
  has_many :car_services
  has_many :services, through: :car_services

  def miles_difference
    last_oil_change = nil # creates a local variable to start finding last oil change

    maintenance_events.order(:date).each do |maintenance_event|  # loops through each maintenance_event according to date
      if maintenance_event.oil_change? #  
        last_oil_change = maintenance_event
      end
    end

    difference = mileage - last_oil_change.mileage
    difference > 4000
  end

  def months_difference
    last_oil_change = nil
    


    
  end

  def oil_change_alert?
    
  end
end


