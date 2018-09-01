class TripsController < ApplicationController
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
  end

  def index
    @trips = Trip.all
  end

  def show
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:user_id, :city_id, :country_id, :length_of_trip)
  end
end
