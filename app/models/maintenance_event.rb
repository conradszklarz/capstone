class MaintenanceEvent < ApplicationRecord
  belongs_to :car
  has_many :car_parts
  has_many :maintenance_services
  has_many :services, through: :maintenance_services

  def oil_change?
    services.select {|service| service.name == "Oil Change" }.any?
  end

  def tire_rotation?
    services.select {|service| service.name == "Tire Rotation" }.any?
  end

  def air_filter?
    services.select {|service| service.name == "Air Filter" }.any?
  end

  def belts?
    services.select {|service| service.name == "Belts" }.any?
  end

  def timing_belt?
    services.select {|service| service.name == "Timing Belt" }.any?
  end

  def hoses?
    services.select {|service| service.name == "Hoses" }.any?
  end

  def alignment?
    services.select {|service| service.name == "Alignment" }.any?
  end

  def wipers?
    services.select {|service| service.name == "Wipers" }.any?
  end

  def tires?
    services.select {|service| service.name == "Tires" }.any?
  end
end
