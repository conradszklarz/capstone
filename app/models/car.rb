class Car < ApplicationRecord
  belongs_to :user
  has_many :maintenance_events
  has_many :car_parts, through: :maintenance_events
  has_many :car_services
  has_many :services, through: :car_services

  def over_due_miles?(service)
    over_due = false

    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.check_for_service?(service)  
        difference = mileage - maintenance_event.mileage 
        over_due = difference > service.mileage_marker
      end
    end
    
    over_due
  end

  def over_due_time?(service)
    over_due = nil
    maintenance_events.order(:date).each do |maintenance_event|
      if maintenance_event.check_for_service?(service)
        over_due = maintenance_event.date > eval("#{service.time_marker}.#{service.time_increment}.ago")
      end
    end

    if over_due == nil && created_at < eval("#{service.time_marker}.#{service.time_increment}.ago")
      over_due = true
    else
      over_due = false
    end

    over_due
  end
    


  def service_alert?(service)
    over_due_miles?(service) || over_due_time?(service)
  end


  def alerts 
    alerts_collection = []

    services.uniq.each do |service|
      if service_alert?(service)
        alerts_collection << service.alert_message
      end
    end

    alerts_collection
  end
end



