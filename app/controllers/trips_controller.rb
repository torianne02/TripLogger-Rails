class TripsController < ApplicationController
  before_action :set_user
  before_action :set_trip, only: %i[show edit update destroy]

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.create(trip_params)

    if @trip.save
      redirect_to user_trips_url(@user), notice: 'Trip was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @trip.update(trip_params)
      redirect_to user_trips_url(@user), notice: 'Trip was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @trip.destroy
    redirect_to user_trips_url(@user), notice: 'Trip was successfully deleted.'
  end

  def index
    if current_user
      @trips = @user.trips
    else
      redirect_to root_path
    end
  end

  def show
    @city = City.find_by(id: @trip.city_id)
    @country = Country.find_by(id: @trip.country_id)
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def set_user
    @user = User.find(session[:user_id])
  end

  def trip_params
    params.require(:trip).permit(
      :user_id,
      :length_of_trip,
      city_attributes: %i[name travel_advice tourist_rating id _destroy],
      country_attributes: %i[name native_language id _destroy]
    )
  end
end
