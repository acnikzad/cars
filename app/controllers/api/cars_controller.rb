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
