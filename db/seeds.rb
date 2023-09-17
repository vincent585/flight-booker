# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Flight.destroy_all
Airport.destroy_all

Airport.create([
                 { name: 'John F. Kennedy International Airport', iata_code: 'JFK' }, # 1
                 { name: 'Leeds-Bradford Airport', iata_code: 'LBA' }, # 2
                 { name: 'Manchester International Airport', iata_code: 'MCR' }, # 3
                 { name: 'Hartsfield-Jackson Atlanta International Airport', iata_code: 'ATL' }, # 4
                 { name: 'Charles de Gaulle', iata_code: 'CDG' }, # 5
                 { name: "Cote d'Azur", iata_code: 'NCE' }, # 6
                 { name: 'Baiyun Intl', iata_code: 'CAN' }, # 7
                 { name: 'Hong Kong Intl.', iata_code: 'HKG' }, # 8
                 { name: 'Tokyo Intl (Haneda)', iata_code: 'HND' }, # 9
                 { name: "O'Hare International", iata_code: 'ORD' }, # 10
                 { name: 'Los Angeles Intl.', iata_code: 'LAX' }, # 11
                 { name: 'Incheon International', iata_code: 'ICN' } # 12
               ])

start = Time.zone.today
finish = Time.zone.today + 30.days

(start..finish).each do |date|
  airports = Airport.all.sample(2)
  flight_generator = FlightGenerator.new(date)

  flight_generator.generate(airports)
end
