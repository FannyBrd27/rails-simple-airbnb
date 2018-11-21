require 'faker'
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  flat = Flat.new(
    name: ['Amazing apartment', 'Beautiful loft', 'Incredibly well located apartment', 'Stunning view from the balcony'].sample,
    address: Faker::Address.street_address,
    description: Faker::Hipster.paragraph(2),
    price_per_night: rand(30..190),
    number_of_guests: rand(1..6)
  )

  flat.save
end
