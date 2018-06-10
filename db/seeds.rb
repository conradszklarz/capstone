maintenance_event = MaintenanceEvent.new(event: "change_oil", action: "Time to change your oil and oil filter. Also, please remember to blow out engine air filter, cabin air filter, top off radiator and radiator reservoir, top off brake fluid tank, check tire pressure, and check for any leaks under the car.")
maintenance_event.save

maintenance_event = MaintenanceEvent.new(event: "tires", action: "Time to balance and rotate your tires. Remember to also check tire pressure when finished.")
maintenance_event.save

maintenance_event = MaintenanceEvent.new(event: "every_30k", action: "You've driven 30,000 miles, at this interval you should change your engine air filter, cabin air filter, spark plugs, and spark plug wires. Make sure to contact your local dealer or look through your owners manual to find the proper spark plug gap and adjust accordingly.")
maintenance_event.save