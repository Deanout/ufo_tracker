# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

ufo = Ufo.create(name: 'UFO 1', description: 'This is a UFO', status: 'active')

# Create a sighting
sighting = Sighting.create(ufo_id: 1, date: '2021-01-01', time: '12:00:00')

Coordinate.create(lat: 45.78722, long: -87.39472, sighting_id: 1)
Coordinate.create(lat: 45.78722, long: -85.60527, sighting_id: 1)
Coordinate.create(lat: 44.53944, long: -85.62472, sighting_id: 1)
Coordinate.create(lat: 44.53944, long: -87.37527, sighting_id: 1)