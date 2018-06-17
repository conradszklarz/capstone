tclass Api::ServicesController < ApplicationController
  def index
    @service = Service.all
    render 'index.json.jbuilder'
  end

  def create
    @service = Service.new(
                         name: params[:name],
                         mileage_marker: params[:mileage_marker],
                         time_marker: params[:time_marker],
                         time_increment: params[:time_increment],
                         )
    @service.save
    render 'show.json.jbuilder'
  end

  def show
    serviceid = params[:id]
    @service = Service.find(service_id)

    render 'show.json.jbuilder'
  end

  def update
    service_id = params[:id]
    @service = Service.find(service_id)

    @service.name = params[:name] || @service.name
    @service.mileage_marker = params[:mileage_marker] || @service.mileage_marker
    @service.time_marker = params[:time_marker] || @service.time_marker
    @service.time_increment = params[:time_increment] || @service.time_increment
    
    @service.save
    render 'show.json.jbuilder'
  end

  def destroy
    service_id = params[:id]
    @service = Service.find(service_id)
    @service.destroy
    render json: {message: "Service successfully destroyed."}
  end
end

