class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.integer :seats_available
      t.time :duration
      t.datetime :departure_date

      t.timestamps
    end
  end
end
