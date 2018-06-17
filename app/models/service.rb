class Service < ApplicationRecord
  belongs_to :car_service
  belongs_to :maintenance_service
end
