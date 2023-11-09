class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.index :passenger_id
      t.index :flight_id
      t.timestamps
    end
  end
end
