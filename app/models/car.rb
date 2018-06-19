class Car < ApplicationRecord
  belongs_to :user
  has_many :maintenance_events
  has_many :car_parts, through: :maintenance_events
  has_many :car_services
  has_many :services, through: :car_services
end
