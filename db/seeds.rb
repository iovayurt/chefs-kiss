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
# create a new user
# relate a chef and a user
user = User.create(first_name: "Ilyas", last_name: "Ovayurt", location: "Uskudar", password: "password", email: "ilyas@ilyas.com")
user2 = User.create(first_name: "Begum", last_name: "Ozpeker", location: "Besiktas", password: "password", email: "begum@begum.com")
user3 = User.create(first_name: "Aziz", last_name: "Alansari", location: "Beyoglu", password: "password", email: "aziz@aziz.com")

chef1 = { user: user, first_name: "Tony", last_name: "Montana", speciality: "Italian food", rating: 5, price: "500 TL", location: "Istanbul", description: "Great chef"}
chef2 = { user: user2, first_name: "Mahmut", last_name: "Usta", speciality: "Turkish food", rating: 4, price: "200 TL", location: "Istanbul", description: "Great chef"}
chef3 = { user: user2, first_name: "Lea", last_name: "Monet", speciality: "French food", rating: 4, price: "800 TL", location: "Istanbul", description: "Great chef"}
chef4 = { user: user, first_name: "Manon", last_name: "Laurent", speciality: "French food", rating: 5, price: "1200 TL", location: "Istanbul", description: "Great chef"}
chef5 = { user: user, first_name: "Wang", last_name: "Li", speciality: "Chinese food", rating: 3, price: "200 TL", location: "Istanbul", description: "Great chef"}
chef6 = { user: user3, first_name: "Chen", last_name: "Zhao", speciality: "Chinese food", rating: 4, price: "350 TL", location: "Istanbul", description: "Great chef"}
chef7 = { user: user, first_name: "Marco", last_name: "Giovanni", speciality: "Italian food", rating: 3, price: "150 TL", location: "Istanbul", description: "Great chef"}
chef8 = { user: user3, first_name: "Somer", last_name: "Sivri", speciality: "Turkish food", rating: 5, price: "600 TL", location: "Istanbul", description: "Great chef"}


[chef1, chef2, chef3, chef4, chef5, chef6, chef7, chef8].each do |attributes|
  chef = Chef.create!(attributes)
  puts "Created #{chef.first_name}"
end

puts "Finished!"
