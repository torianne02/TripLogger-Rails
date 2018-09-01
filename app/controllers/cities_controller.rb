class CitiesController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  private

  def city_params
    params.require(:city).permit(:name, :travel_advice, :tourist_rating)
  end
end
