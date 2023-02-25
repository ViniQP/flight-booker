class Airport < ApplicationRecord
  has_many :departing_flights, inverse_of: "departure_airport", class_name: "Flight", foreign_key: "departure_airport_id"
  has_many :arriving_flights, inverse_of: "arrival_airport", class_name: "Flight", foreign_key: "arrival_airport_id"

  validates :name, presence: true
end