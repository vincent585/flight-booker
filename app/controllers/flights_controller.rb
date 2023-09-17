# frozen_string_literal: true

# class for handling flight search functionality
class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |a| ["#{a.name} - #{a.iata_code}", a.iata_code] }
    @departure_dates = Airport.all.flat_map { |a| a.departing_flights.map(&:departure_date) }
  end
end
