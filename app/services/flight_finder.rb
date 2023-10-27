class FlightFinder
  def find_flights(search_params)
    departure_date = search_params[:departure_date]
    departure_airport = Airport.find_by_iata_code(search_params[:departure_airport])
    arrival_airport = Airport.find_by_iata_code(search_params[:arrival_airport])

    Flight.where(
      departure_airport_id: departure_airport.id,
      arrival_airport_id: arrival_airport.id,
      departure_date: departure_date
    )
  end
end
