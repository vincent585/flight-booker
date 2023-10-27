# frozen_string_literal: true

# class for handling flight search functionality
class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| ["#{a.name} - #{a.iata_code}", a.iata_code] }
    @departure_dates = Airport.all.flat_map { |a| a.departing_flights.map(&:departure_date) }
    console

    @flights = params[:commit].nil? ? Flight.first(5) : find_flights(flight_search_params)
  end

  private

  def find_flights(params)
    FlightFinder.new.find_flights(params)
  end

  def flight_search_params
    params.except(:commit).permit(
      :departure_airport,
      :arrival_airport,
      :departure_day,
      :departure_month,
      :departure_year,
      :passenger_count
    )
  end
end
