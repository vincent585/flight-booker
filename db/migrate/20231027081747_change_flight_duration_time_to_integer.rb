class ChangeFlightDurationTimeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column(:flights, :duration, :integer)
  end
end
