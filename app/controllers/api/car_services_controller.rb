class Api::CarServicesController < ApplicationController
  def index
    @car_services = CarService.all

    render 'index.json.jbuilder'
  end

  def create
    @car_service = CarService.new(
                         car_id: params[:car_id],
                         service_id: params[:service_id],
                         )
    @car_service.save
    render 'show.json.jbuilder'
  end

  def show
    car_service_id = params[:id]
    @car_service = CarService.find(car_service_id)

    render 'show.json.jbuilder'
  end

  def update
    car_service_id = params[:id]
    @car_service = CarService.find(car_service_id)

    @car_service.car_id = params[:car_id] || @car_service.car_id
    @car_service.service_id = params[:service_id] || @car_service.service_id
    
    @car_service.save
    render 'show.json.jbuilder'
  end

  def destroy
    car_service_id = params[:id]
    @car_service = CarService.find(car_service_id)
    @car_service.destroy
    render json: {message: "Car service successfully destroyed."}
  end
end
