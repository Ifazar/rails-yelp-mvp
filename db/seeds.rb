# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
pizzapizza = { name: "PizzaPizza", address: "123 boulevard de France - 75841", phone_number: "02.15.48.79.23", category: "italian" }
traveljapan = { name: "TravelJapan", address: "45 rue des Mims - 75013", phone_number: "05.01.08.98.85", category: "japanese" }
bonnefrite = { name: "La Bonne Frite", address: "14 rue des Francs - 01475", phone_number: "02.14.25.56.75", category: "belgian" }
royalmo = { name: "Au Royal Morangis", address: "14 boulevard de France - 91000", phone_number: "02.12.45.45.56", category: "chinese" }
lentrecote = { name: "L'entrecote", address: "45 avenue du plessis - 91260", phone_number: "01.25.25.56.89", category: "french" }
bolognaise = { name: "La Bolognaise", address: "place d'Italie", phone_number: "02.12.52.58.75", category: "italian" }
cantonnais = { name: "Le Cantonnais", address: "Somewhere", phone_number: "05.14.58.58.98", category: "chinese" }

[pizzapizza, traveljapan, bonnefrite, royalmo, lentrecote, bolognaise, cantonnais].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
