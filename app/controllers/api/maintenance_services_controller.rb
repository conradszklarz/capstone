class Api::MaintenanceServicesController < ApplicationController
  def index
    @maintenance_services = MaintenanceServices.all

    render 'index.json.jbuilder'
  end

  def create
    @maintenance_service = MaintenanceService.new(
                         maintenance_event_id: params[:maintenance_event_id],
                         service_id: params[:service_id],
                         )
    @maintenance_service.save
    render 'show.json.jbuilder'
  end

  def show
    maintenance_service_id = params[:id]
    @maintenance_service = MaintenanceService.find(maintenance_service_id)

    render 'show.json.jbuilder'
  end

  def update
    maintenance_service_id = params[:id]
    @maintenance_service = MaintenanceService.find(maintenance_service_id)

    @maintenance_service.maintenance_event_id = params[:maintenance_event_id] || @maintenance_service.car_id
    @maintenance_service.service_id = params[:service_id] || @maintenance_service.service_id
    

    @maintenance_service.save
    render 'show.json.jbuilder'
  end

  def destroy
    maintenance_service_id = params[:id]
    @maintenance_service = MaintenanceService.find(maintenance_service_id)
    @maintenance_service.destroy
    render json: {message: "Maintenance service successfully destroyed."}
  end
end

