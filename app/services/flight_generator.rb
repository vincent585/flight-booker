# frozen_string_literal: true

# Class to generate random flights
class FlightGenerator
  def initialize(date)
    @date = date
    @random = Random.new
  end

  def generate(airports)
    Flight.create(
      seats_available: random.rand(10..150),
      duration: random.rand(1..720),
      departure_airport: airports.first,
      arrival_airport: airports.last,
      departure_date: date
    )
  end

  private

  attr_reader :date, :random
end
