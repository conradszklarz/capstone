Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  namespace :api do
  # get '/users' => 'users#index'
  post "/users" => "users#create"
  # get '/users' => 'users#show'
  # post '/users' => 'users#create'
  # patch '/users/:id' => 'users#update'
  # delete '/users/:id' => 'users#destroy'

  get '/cars' => 'cars#index'
  get '/cars' => 'cars#show'
  post '/cars' => 'cars#create'
  patch '/cars/:id' => 'cars#update'
  delete '/cars/:id' => 'cars#destroy'
  
  get '/car_services' => 'car_services#index'
  get '/car_services' => 'car_services#show'
  post '/car_services' => 'car_services#create'
  patch '/car_services/:id' => 'car_services#update'
  delete '/car_services/:id' => 'car_services#destroy'

  get '/services' => 'services#index'
  get '/services' => 'services#show'
  post '/services' => 'services#create'
  patch '/services/:id' => 'services#update'
  delete '/services/:id' => 'services#destroy'

  get '/maintenance_services' => 'maintenance_services#index'
  get '/maintenance_services' => 'maintenance_services#show'
  post '/maintenance_services' => 'maintenance_services#create'
  patch '/maintenance_services/:id' => 'maintenance_services#update'
  delete '/maintenance_services/:id' => 'maintenance_services#destroy'

  get '/maintenance_events' => 'maintenance_events#index'
  get '/maintenance_events' => 'maintenance_events#show'
  post '/maintenance_events' => 'maintenance_events#create'
  patch '/maintenance_events/:id' => 'maintenance_events#update'
  delete '/maintenance_events/:id' => 'maintenance_events#destroy'

  get '/car_parts' => 'car_parts#index'
  get '/car_parts' => 'car_parts#show'
  post '/car_parts' => 'car_parts#create'
  patch '/car_parts/:id' => 'car_parts#update'
  delete '/car_parts/:id' => 'car_parts#destroy'
  end
end
