class Api::CarsController < ApplicationController

  def index
    @cars = Car.all
    render 'index.json.jb'
  end

  def create
    @car = Car.new(
      make: params[:make],
      model: params[:model],
      submodel: params[:submodel],
      color: params[:color],
      year: params[:year],
      )

    @car.save
    render 'show.json.jb'
  end

  def show
    the_id = params[:id]
    @car = Car.find_by(id: the_id)
    render 'show.json.jb'
  end

  def update
    @car = Car.find_by(id:params[:id])

    @car.update(
      make: params[:make] || @car.make,
      model: params[:model] || @car.model,
      submodel: params[:submodel] || @car.submodel,
      color: params[:color] || @car.color,
      year: params[:year] || @car.year
      )

    @car.save
    render 'show.json.jb'
  end

  def destroy
    car = Car.find_by(id:params[:id])
    car.destroy
    render json: {message:"Car has been successfuly destroyed"}
  end

end
