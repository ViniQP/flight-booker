# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

airports = Airport.create([
  { name: 'GRU'},
  { name: 'NYC'},
  { name: 'RIO'},
])

flights = Flight.create([
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.first.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.first.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.second.id, arrival_airport_id: airports.third.id, departure_time: Time.now.next_year, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.prev_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_month, duration: 600},
  { departure_airport_id: airports.third.id, arrival_airport_id: airports.second.id, departure_time: Time.now.next_year, duration: 600},
])  