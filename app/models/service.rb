class Service < ApplicationRecord
  has_many :car_services
  has_many :maintenance_services
end
