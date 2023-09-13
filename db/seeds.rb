# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#

require "json"
require "open-uri"

puts "je détruis tous les films"
Movie.destroy_all

url = "https://gist.githubusercontent.com/alexandremeunier/49533eebe2ec93b14d32b2333272f9f8/raw/924d89e2236ca6fa2ade7481c91bfbf858c49531/movies.json"
file = URI.open(url)
movies = JSON.parse(file.read)

10.times do
  movies.map do |movie|
    Movie.create(
      title: movie["title"],
      year: movie["year"],
      image: movie["image"],
      score: movie["score"],
      rating: movie["rating"]
    )
  end
end

puts "j'ai créé toute la liste de films"
