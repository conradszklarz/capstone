json.id car.id
json.user_id car.user_id
json.year car.year
json.make car.make
json.model car.model
json.mileage car.mileage
json.maintenance_events do
  json.array! car.maintenance_events, partial: "api/maintenance_events/maintenance_event", as: :maintenance_event
end
json.alerts car.alerts
