Restaurant.destroy_all
Review.destroy_all


puts "🌱 Seeding Restaurants..."

10.times do
restaurant = Restaurant.create(
    name: Faker::Restaurant.name, 
    cuisine: Faker::Restaurant.type
)

end

puts "🌱 Seeding Reviews..."

10.times do
review = Review.create(
    rating: Faker::Restaurant.review, 
    user_name: Restaurant.name, 
    restaurant_id: Restaurant.all.sample.id
)
end


puts "✅ Done seeding!"
