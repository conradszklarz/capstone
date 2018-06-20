service = Service.new(name: "oil", mileage_marker: 4000, time_marker: 4, time_increment: "month")
service.save
car_part = CarPart.new(
  maintenance_event_id: 1, 
  date: "2018-06-12 16:59:58 -500", 
  part_number: "534-423", 
  price: 50.89)
car_part.save

car_service = CarService.new(car_id: 2, service_id: 5)
car_service.save

car = Car.new(user_id: 3, year: 2006, make:"Toyota", model:"Rav4", mileage:193000)
car.save

maintenance_event = MaintenanceEvent.new(
  car_id: 3,
  provider: "Joes", 
  price: 320.56, 
  date: "2018-06-11 11:38:58 -500",
  complete: true, 
  mileage: 120000)
maintenance_event.save

maintenance_event = MaintenanceEvent.new(
  car_id: 7,
  provider: "Jiffy Lube", 
  price: 49.99, 
  date: "2017-07-19 11:38:58 -500",
  complete: true, 
  mileage: 149000)
maintenance_event.save

maintenance_service = MaintenanceService.new( 
  maintenance_event_id: 6,
  service_id: 6)
maintenance_service.save

user = User.new(
  name: "John Adams",
  email: "jadams@gmail.com",
  password: "password",
  password_confirmation: "password")
user.save

user = User.new(
  name: "Rob Carl",
  email: "rcarl@gmail.com",
  password: "password",
  password_confirmation: "password")
user.save

car = Car.new(user_id: 1, year: 2018, make:"Chevy", model:"Camaro", mileage:14,580)
car.save

car_service = CarService.new(car_id: 1, service_id: 1)
car_service.save

