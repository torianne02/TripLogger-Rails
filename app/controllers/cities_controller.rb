class CitiesController < ApplicationController
  def new
    @city = City.new
  end

  def index
    @cities = City.all
  end

  def show
    @city = City.find(params[:id])
  end

  private

  def city_params
    params.require(:city).permit(:name, :travel_advice, :tourist_rating)
  end
end
