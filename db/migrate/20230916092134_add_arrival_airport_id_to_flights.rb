class AddArrivalAirportIdToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :arrival_airport_id, :integer
    add_foreign_key :flights, :airports, column: :arrival_airport_id
  end
end
