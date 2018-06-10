Rails.application.routes.draw do
  namespace :api do
  get '/first_maintenance_event' => 'maintenance_events#first'
  get '/second_maintenance_event' => 'maintenance_events#second'
  get '/third_maintenance_event' => 'maintenance_events#third'
  get '/change_oil' => 'maintenance_events#change_oil'
  get '/tires' => 'maintenance_events#tires'
  get '/every_30k' => 'maintenance_events#every_30k'
  end
end
