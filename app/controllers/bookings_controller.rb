class BookingsController < ApplicationController
  def show; end

  def new
    @flight = Flight.find(params[:flight_id])
    @booking = Booking.new
    params[:passenger_count].to_i.times { @booking.passengers.build }
  end

  def create; end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: %i[id name email])
  end
end
