# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Chef.destroy_all
puts "Creating chefs..."
# create a new users
# relte a chef and a user
user = User.create(first_name: "ilyass", last_name: "garson", location: "karkoy", password: "password", email: "ilyass@ilyass.com")

chef1 = { user: user, first_name: "Tony", last_name: "Montana", speciality: "Italian food", rating: 5, description: "pizza king", location: "Galata", price: "150 dollar" }
chef2 =  { user: user, first_name: "Mahmut", last_name: "Usta", speciality: "Turkish food", rating: 4, description: "Meat master", location: "Sisli", price: "100 dollar" }
[ chef1, chef2 ].each do |attributes|
  chef = Chef.create!(attributes)
  puts "Created #{chef.first_name}"
end
puts "Finished!"
