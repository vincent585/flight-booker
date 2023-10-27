class FlightFinder
  def find_flights(search_params)
    departure_date = get_departure_date(search_params)
    departure_airport = Airport.find_by_iata_code(search_params[:departure_airport])
    arrival_airport = Airport.find_by_iata_code(search_params[:arrival_airport])

    Flight.where(
      departure_airport_id: departure_airport.id,
      arrival_airport_id: arrival_airport.id,
      departure_date: departure_date
    )
  end

  private

  def get_departure_date(search_params)
    DateTime.new(
      search_params[:departure_year].to_i,
      search_params[:departure_month].to_i,
      search_params[:departure_day].to_i
    )
  end
end
