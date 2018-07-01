class Car < ApplicationRecord
  belongs_to :user
  has_many :maintenance_events
  has_many :car_parts, through: :maintenance_events
  has_many :car_services
  has_many :services, through: :car_services

  def miles_difference
    last_oil_change = nil 

    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.oil_change?   
        last_oil_change = maintenance_event 
      end
    end

    if last_oil_change
      difference = mileage - last_oil_change.mileage 
      difference > 4000
    else                  #not based on hardcoded oil change but any service
      false
    end
  end

  def months_difference
    last_oil_change = nil

    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.oil_change?
        last_oil_change = maintenance_event
      end
    end

    if last_oil_change
      last_oil_change.date < 4.months.ago
    else
      created_at < 4.months.ago #look at eval() METHOD!!
    end
  end
    


  def oil_change_alert?()
    miles_difference || months_difference
  end

  def alerts #pass in all services for this car
    alerts_collection = []

    service_to_check = Service.find(1)#tires
    service_to_check = Service.find(2)#oil change

    if oil_change_alert?
      alerts_collection << "Time to change your oil and oil filter. ***For the do-it-yourselfer...please remember to blow out engine air filter, cabin air filter, top off radiator and radiator reservoir, top off brake fluid tank, grease all grease joints, check tire pressure, and check for any leaks under the car."
    end

    alerts_collection
  end

    
  
end


