class Api::MaintenanceEventsController < ApplicationController

  def first
    @maintenance_event = MaintenanceEvent.first
    render 'one_maintenance_event.json.jbuilder'
    
  end
  def second
    @maintenance_event = MaintenanceEvent.second
    render 'one_maintenance_event.json.jbuilder'
    
  end
  def third
    @maintenance_event = MaintenanceEvent.third
    render 'one_maintenance_event.json.jbuilder'
    
  end
  def change_oil
    @message = "Time to change your oil and oil filter. Also, please remember to blow out engine air filter, cabin air filter, top off radiator and radiator reservoir, top off brake fluid tank, check tire pressure, and check for any leaks under the car."
    render 'change_oil.json.jbuilder'
  end

  def tires
    @message = "Time to balance and rotate your tires"
    render 'tires.json.jbuilder'
  end

  def every_30k
    @message = "You've driven 30,000 miles, at this interval you should change your engine air filter, cabin air filter, spark plugs, and spark plug wires. Make sure to contact your local dealer or look through your owners manual to find the proper spark plug gap and adjust accordingly."
    render 'every_30k.json.jbuilder'
  end
end
