# frozen_string_literal: true

# class for handling flight search functionality
class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| ["#{a.name} - #{a.iata_code}", a.iata_code] }
    @departures = Airport.all.flat_map(&:departing_flights).sort_by(&:departure_date)

    @flights = flight_search_params.empty? ? Flight.first(5) : find_flights
  end

  private

  def find_flights
    if params[:arrival_airport] == params[:departure_airport]
      flash.now[:error] = 'Arrival and departure airports must be different'
      render :index, status: :unprocessable_entity
    else
      FlightFinder.new.find_flights(flight_search_params)
    end
  end

  def flight_search_params
    params.except(:commit).permit(
      :departure_airport,
      :arrival_airport,
      :departure_date,
      :passenger_count
    )
  end
end
