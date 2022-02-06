class Api::CarsController < ApplicationController


  def index
    @cars = Car.all
    render "index.json.jb"
  end

  def create
    @cars = Car.new(
      make: params[:make],
      model: params[:model],
      submodel: params[:submodel],
      color: params[:color],
      year: params[:year],
      )
  end

  def show
    @cars = Car.find_by(id:params[:id])
    render "show.json.jb"
  end

  def update
    @cars = car.find_by(id:params[:id])
    @car.make = params[:make] || @car.make
    @car.model = params[:model] || @car.model
    @car.submodel = params[:submodel] || @car.submodel
    @car.color = params[:color] || @car.color
    @car.year = params[:year] || @car.year
    @car.save
  end

  def destroy
    car = Car.find_by(id:params[:id])
    car.destroy
    render json: {message:"Car has been successfuly destroyed"}
  end

end
