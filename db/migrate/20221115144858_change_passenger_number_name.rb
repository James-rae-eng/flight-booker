class ChangePassengerNumberName < ActiveRecord::Migration[7.0]
  def change
    rename_column :bookings, :passenger_number, :number_of_passengers
  end
end
