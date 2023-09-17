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

Flight.create([
                { seats_available: 100,
                  duration: Time.new.change({ hour: 4, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 19, 6, 30),
                  departure_airport: Airport.find_by(iata_code: 'JFK'),
                  arrival_airport: Airport.find_by(iata_code: 'ATL') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 1, min: 30 }),
                  departure_date: DateTime.new(2023, 12, 25, 8, 0),
                  departure_airport: Airport.find_by(iata_code: 'MCR'),
                  arrival_airport: Airport.find_by(iata_code: 'CDG') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 2, min: 30 }),
                  departure_date: DateTime.new(2024, 5, 21, 16, 0),
                  departure_airport: Airport.find_by(iata_code: 'LBA'),
                  arrival_airport: Airport.find_by(iata_code: 'NCE') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 12, min: 0 }),
                  departure_date: DateTime.new(2024, 6, 19, 12, 15),
                  departure_airport: Airport.find_by(iata_code: 'HND'),
                  arrival_airport: Airport.find_by(iata_code: 'LAX') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 7, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 19, 16, 0),
                  departure_airport: Airport.find_by(iata_code: 'ICN'),
                  arrival_airport: Airport.find_by(iata_code: 'JFK') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 2, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 19, 12, 30),
                  departure_airport: Airport.find_by(iata_code: 'ICN'),
                  arrival_airport: Airport.find_by(iata_code: 'HKG') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 5, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 20, 9, 0),
                  departure_airport: Airport.find_by(iata_code: 'ORD'),
                  arrival_airport: Airport.find_by(iata_code: 'LAX') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 13, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 19, 11, 15),
                  departure_airport: Airport.find_by(iata_code: 'CDG'),
                  arrival_airport: Airport.find_by(iata_code: 'CAN') },
                { seats_available: 100,
                  duration: Time.new.change({ hour: 7, min: 30 }),
                  departure_date: DateTime.new(2023, 11, 19, 6, 45),
                  departure_airport: Airport.find_by(iata_code: 'JFK'),
                  arrival_airport: Airport.find_by(iata_code: 'CDG') }
              ])
