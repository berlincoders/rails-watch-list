# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "Cleaning database..."
Movie.destroy_all

puts "Creating movies..."

50.times do

  Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image,
    rating:Faker::Number.decimal
  )
end
