class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.belongs_to :departure_airport
      t.belongs_to :arrival_airport
      t.datetime :departure_time
      t.integer :duration


      t.timestamps
    end
  end
end
