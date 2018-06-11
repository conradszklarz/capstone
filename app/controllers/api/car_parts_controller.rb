class Api::CarPartsController < ApplicationController
  def index
    @car_parts = CarPart.all

    render 'index.json.jbuilder'
  end

  def create
    @car_part = CarPart.new(
                         maintenance_event_id: params[:maintenance_event_id],
                         date: params[:date],
                         part_number: params[:part_number],
                         price: params[:price],
                         )
    @car_part.save
    render 'show.json.jbuilder'
  end

  def show
    car_part_id = params[:id]
    @car_part = CarPart.find(car_part_id)

    render 'show.json.jbuilder'
  end

  def update
    car_part_id = params[:id]
    @car_part = CarPart.find(car_part_id)

    @car_part.maintenance_event_id = params[:maintenance_event_id] || @car_part.maintenance_event_id
    @car_part.date = params[:date] || @car_part.date
    @car_part.price = params[:price] || @car_part.price
    @car_part.part_number = params[:part_number] || @car_part.part_number
    
    @car_part.save
    render 'show.json.jbuilder'
  end

  def destroy
    car_part_id = params[:id]
    @car_part = CarPart.find(car_part_id)
    @car_part.destroy
    render json: {message: "Car part successfully destroyed."}
  end
end


