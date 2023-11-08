class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_join_table :passengers, :flights, table_name: :bookings do |t|
      t.index :passenger_id
      t.index :flight_id
      t.timestamps
    end
  end
end
