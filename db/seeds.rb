puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "3882  Hayhurst Lane", category: "french"}
mushroom = { name: "Mushroom", address: "1361  Hartland Avenue", category: "french"}
itinerant = { name: "Itinerant", address: "3673  Strother Street", category: "french"}
las_calles = { name: "Las Calles", address: "1216  Hurry Street", category: "french"}
pizza_east = { name: "Pizza East", address: "2853  Sharon Lane", category: "french"}

[ dishoom, mushroom, itinerant, las_calles, pizza_east ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"
