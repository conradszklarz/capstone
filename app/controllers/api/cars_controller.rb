class Api::CarsController < ApplicationController
  def index
    @cars = Car.where(user_id: current_user)

    render 'index.json.jbuilder'
  end

  def create
    @car = Car.new(
                         user_id: params[:user_id],
                         year: params[:year],
                         make: params[:make],
                         model: params[:model],
                         mileage: params[:mileage]
                         )
    @car.save
    render 'show.json.jbuilder'
  end

  def show
    car_id = params[:id]
    @car = Car.find(car_id)

    render 'show.json.jbuilder'
  end

  def update
    car_id = params[:id]
    @car = Car.find(car_id)

    @car.user_id = params[:user_id] || @car.user_id
    @car.year = params[:year] || @car.year
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.mileage = params[:mileage] || @car.mileage

    @car.save
    render 'show.json.jbuilder'
  end

  def destroy
    car_id = params[:id]
    @car = Car.find(car_id)
    @car.destroy
    render json: {message: "Car successfully destroyed."}
  end
end

