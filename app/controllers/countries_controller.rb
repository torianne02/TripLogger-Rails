class CountriesController < ApplicationController
  def new
  end

  def index
  end

  def show
  end

  private

  def country_params
    params.require(:country).permit(:name, :native_language)
  end
end
