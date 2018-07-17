class MaintenanceEvent < ApplicationRecord
  belongs_to :car
  has_many :car_parts
  has_many :maintenance_services
  has_many :services, through: :maintenance_services

  def check_for_service?(service)
    services.include?(service)
  end

  def formatted_time
    date.strftime("%b %d, %Y") if date
  end

end
