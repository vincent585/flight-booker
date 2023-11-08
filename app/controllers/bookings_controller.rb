class BookingsController < ApplicationController
  def show
  end

  def new
    @booking = Booking.new(flight_id: booking_params[:flight_id])
  end

  def create
  end

  private

  def booking_params
    params.except(:commit).permit(:flight_id, :passenger_count)
  end
end
