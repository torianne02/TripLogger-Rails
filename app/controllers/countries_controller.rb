class CountriesController < ApplicationController
  def new
    @country = Country.new
  end

  def index
    @countries = Country.all
  end

  def show
    @country = Country.find(params[:id])
  end

  private

  def country_params
    params.require(:country).permit(:name, :native_language)
  end
end
