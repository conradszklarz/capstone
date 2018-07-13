json.id maintenance_event.id
json.car_id maintenance_event.car_id
json.provider maintenance_event.provider
json.price maintenance_event.price
json.date maintenance_event.date
json.complete maintenance_event.complete
json.mileage maintenance_event.mileage

json.services do
json.array! maintenance_event.services, partial: "api/services/service", as: :service
end