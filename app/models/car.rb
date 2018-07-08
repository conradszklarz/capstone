class Car < ApplicationRecord
  belongs_to :user
  has_many :maintenance_events
  has_many :car_parts, through: :maintenance_events
  has_many :car_services
  has_many :services, through: :car_services

  def miles_difference
    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.oil_change?   
        difference = mileage - maintenance_event.mileage 
        if difference > 4000
          true
        else
          false
        end
      end
      if maintenance_event.tire_rotation?
         difference = mileage - maintenance_event.mileage
        if difference > 7000
          true
        else
          false
        end
      end
      if maintenance_event.air_filter?
         difference = mileage - maintenance_event.mileage
        if difference > 30000
          true
        else
          false
        end
      end
      if maintenance_event.belts?   
        difference = mileage - maintenance_event.mileage 
        if difference > 60000
          true
        else
          false
        end
      end 
      if maintenance_event.timing_belt?
         difference = mileage - maintenance_event.mileage
        if difference > 100000
          true
        else
          false
        end
      end
      if maintenance_event.hoses?
         difference = mileage - maintenance_event.mileage
        if difference > 48000
          true
        else
          false
        end
      end
      if maintenance_event.alignment?
         difference = mileage - maintenance_event.mileage
        if difference > 12000
          true
        else
          false
        end
      end
      if maintenance_event.wipers?
         difference = mileage - maintenance_event.mileage
        if difference > 6000
          true
        else
          false
        end
      end
      if maintenance_event.tires?
         difference = mileage - maintenance_event.mileage
        if difference > 50000
          true
        else
          false
        end
      end
    end
  end

  def months_difference
    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.oil_change?
        maintenance_event.date < 4.months.ago
        if created_at < 4.months.ago #look at eval() METHOD!!
          true
        else
          false
      end
    end
      if maintenance_event.belts?
        maintenance_event.date.belts < 60.months.ago
        if created_at < 60.months.ago
          true
        else
          false
        end
      end
    end
  end
    


  def oil_change_alert?()
    miles_difference || months_difference
  end

  def belts_alert?()
    miles_difference || months_difference
  end

  def tire_rotation_alert?()
    miles_difference || months_difference
  end

  def air_filter_alert?()
    miles_difference || months_difference
  end

  def timing_belt?()
    miles_difference || months_difference
  end

  def hoses_alert?()
    miles_difference || months_difference
  end

  def alignment_alert?()
    miles_difference || months_difference
  end

  def wipers_alert?()
    miles_difference || months_difference
  end

  def tires_alert?()
    miles_difference || months_difference
  end


  def alerts #pass in all services for this car
    alerts_collection = []

    service_to_check = Service.find(1)#tires
    service_to_check = Service.find(2)#oil change
    service_to_check = Service.find(3)#air filter
    service_to_check = Service.find(4)#belts
    service_to_check = Service.find(5)#timing belt
    service_to_check = Service.find(6)#hoses
    service_to_check = Service.find(7)#alignment
    service_to_check = Service.find(8)#wipers
    service_to_check = Service.find(9)#tires

    if oil_change_alert?
      alerts_collection << "Time to change your oil and oil filter."
    end

    if tire_rotation_alert?
      alerts_collection << "Time to balance and rotate your tires."
    end

    if air_filter_alert?
      alerts_collection << "It's time to change your air filter, cabin air filter, spark plugs, and spark plug wires have been changed. Make sure to contact your local dealer or look through your owners manual to find the proper spark plug gap and adjust accordingly."
    end

    if belts_alert?
      alerts_collection << "It's been awhile since your serpentine belt has been changed. Also, since you have your belt off be sure to check all your wheels, pulleys, and belt tensioner(s) spin freely. If any do not, change them now."
    end

    alerts_collection
  end
end



