# This will delete any existing rows from the Product and User tables
# so you can run the seed file multiple times without having duplicate entries in your database

puts "Deleting old data..."
Product.destroy_all
User.destroy_all

puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)

puts "Creating products..."
product1 = Product.create(name:"shovel", price: 10)
product2 = Product.create(name: "window seals", price: 15)
product3 = Product.create(name: "nails", price: 5)
product4 = Product.create(name: "plastic pipe", price: 2)
product5 = Product.create(name: "door locks", price: 3)

puts "Creating reviews..."



review1 = Review.create(star_rating: 10, comment: "excellent", user_id: 1, product_id: 5)
review2 = Review.create(star_rating: 5, comment: "good", user_id: 2, product_id: 5)
review3 = Review.create(star_rating: 7, comment: "Neutral", user_id: 3, product_id: 3)
review4 = Review.create(star_rating: 3, comment: "poor", user_id: 2, product_id: 1)


puts "Seeding done!"