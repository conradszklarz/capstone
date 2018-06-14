class MaintenanceEvent < ApplicationRecord
  belongs_to :car
  has_many :car_parts
  has_many :maintenance_services
  has_many :services, through: :maintenance_services
end
