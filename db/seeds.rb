# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Flat.create!(
  name: 'Light & Spacious Garden Flat London',
  address: '10 Clifton Gardens London W9 1DT',
  description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory',
  price_per_night: 75,
  number_of_guests: 3
)

Flat.create!(
  name: 'Best flat in Tel-Aviv',
  address: 'florentin 10 ap.7',
  description: 'A beautiful 2 bedroom flat, with a balcomy. great view to see at the end of the day',
  price_per_night: 100,
  number_of_guests: 2
)

Flat.create!(
  name: 'Perfect place in Paris',
  address: 'Rue Crémieux 15 ap.15',
  description: 'An amazing apartment in a great area, with a large kitchen and lving room',
  price_per_night: 200,
  number_of_guests: 4
)

