class CreatePassengerBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :passenger_bookings do |t|
      t.integer :passenger_id
      t.integer :booking_id

      t.timestamps
    end
    add_foreign_key :passenger_bookings, :passengers, column: :passenger_id
    add_foreign_key :passenger_bookings, :bookings, column: :booking_id
  end
end
