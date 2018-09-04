class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :destroy]
  def new
    @trip = Trip.new
  end

  def create
    @user = current_user
    # need to get rid of conditional and use method to redirect if not logged in
    if logged_in?
      @trip = Trip.new(trip_params)
      redirect_to trip_path(@trip), notice: 'Trip was successfully created.'
    else
      redirect_to trip_path
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to trip_path(@trip), notice: 'Trip was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to trips_url, notice: 'Trip was successfully deleted.'
  end

  def index
    @trips = Trip.all
  end

  def show
    @user = current_user
    @city = City.find_by(id: @trip.city_id)
    @country = Country.find_by(id: @trip.country_id)
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:user_id, :city_id, :country_id, :length_of_trip)
  end
end
