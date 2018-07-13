class Api::MaintenanceEventsController < ApplicationController
  def index
    @maintenance_events = MaintenanceEvent.all
    render 'index.json.jbuilder'
  end

  def create
    @maintenance_event = MaintenanceEvent.new(
                         car_id: params[:car_id],
                         provider: params[:provider],
                         price: params[:price],
                         date: params[:date],
                         complete: params[:complete],
                         mileage: params[:mileage]
                         )
    @maintenance_event.save
    render 'show.json.jbuilder'
  end

  def show
    maintenance_event_id = params[:id]
    @maintenance_event = MaintenanceEvent.find(maintenance_event_id)

    render 'show.json.jbuilder'
  end

  def update
    maintenance_event_id = params[:id]
    @maintenance_event = MaintenanceEvent.find(maintenance_event_id)

    @maintenance_event.car_id = params[:car_id] || @maintenance_event.car_id
    @maintenance_event.provider = params[:provider] || @maintenance_event.provider
    @maintenance_event.price = params[:price] || @maintenance_event.price
    @maintenance_event.date = params[:date] || @maintenance_event.date
    @maintenance_event.complete = params[:complete] || @maintenance_event.complete
    @maintenance_event.mileage = params[:mileage] || @maintenance_event.mileage

    @maintenance_event.save
    render 'show.json.jbuilder'
  end

  def destroy
    maintenance_event_id = params[:id]
    @maintenance_event = MaintenanceEvent.find(maintenance_event_id)
    @maintenance_event.destroy
    render json: {message: "Maintenance event successfully destroyed."}
  end
end

