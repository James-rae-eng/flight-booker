# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#Airport.create(code: "SFO")
#Airport.create(code: "NYC")
airports = Airport.create([
    { code: 'SFO' },
    { code: 'NYC' }
  ])

Flight.create(departure_airport_id: airports.first.id, arrival_airport_id: airports.last.id, 
              departure: DateTime.new(2022, 11, 15, 10, 0), duration: 2.5)
Flight.create(departure_airport_id: airports.last.id, arrival_airport_id: airports.first.id, 
              departure: DateTime.new(2022, 11, 17, 15, 30), duration: 3.0)

