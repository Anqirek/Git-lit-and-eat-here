Restaurant.destroy_all
Review.destroy_all


puts "🌱 Seeding Restaurants..."

20.times do
restaurant = Restaurant.create(
    name: Faker::Restaurant.name, 
    cuisine: Faker::Restaurant.type
)

end

puts "🌱 Seeding Reviews..."

20.times do
review = Review.create(
    rating: Faker::Restaurant.review, 
    user_name: Faker::Name.name, 
    restaurant_id: Restaurant.all.sample.id
)
end


puts "✅ Done seeding!"
