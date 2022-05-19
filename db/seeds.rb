# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

puts 'Deleting all previous items'

Bookmark.destroy_all
List.destroy_all
Movie.destroy_all

puts 'Deleting complete'
puts 'Creating movies, lists, and bookmarks for you'

10.times do
  url = 'https://api.lorem.space/image?w=150&h=180'
  movie = Movie.new(
    title: Faker::Kpop.iii_groups,
    overview: Faker::Quote.yoda,
    poster_url: url,
    rating: rand(0.0..5.0).round(1)
  )
  movie.save!

  puts "created #{movie.title}"

  list = List.new(
    name: Faker::Music.album
  )
  list.save!
  puts "created #{list.name}"
end

puts 'Created movies and lists'
