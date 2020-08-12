# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", phone_number: "05-56-65-54-23", category: "french" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", phone_number: "05-56-65-54-23", category: "italian" }
helios = { name: "Helios", address: "Place d ela comédie", phone_number: "05-56-65-54-23", category: "belgian" }
moshi =  { name: "Moshi", address: "7 rue de la Regexp", phone_number: "05-56-65-54-23", category: "japanese" }
pangolin = { name: "Pangolin", address: "18 rue Covid", phone_number: "05-56-65-54-23", category: "chinese" }

[ dishoom, pizza_east, helios, moshi, pangolin ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
s
