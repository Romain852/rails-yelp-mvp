# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning Database"
Restaurant.destroy_all

puts "Creating seeds"

restaurant_a = {name: "Restaurant A", address: "Hong Kong", phone_number: "1111-1111", category: "belgian"}
restaurant_b = {name: "Restaurant B", address: "Melbourne", phone_number: "2222-2222", category: "italian"}
restaurant_c = {name: "Restaurant C", address: "Paris", phone_number: "3333-3333", category: "japanese"}
restaurant_d = {name: "Restaurant D", address: "Tokyo", phone_number: "5555-5555", category: "french"}
restaurant_e = {name: "Restaurant E", address: "New Delhi", phone_number: "6666-6666", category: "chinese"}

[restaurant_a, restaurant_b, restaurant_c, restaurant_d, restaurant_e].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end

puts "Seeds creation done!"
