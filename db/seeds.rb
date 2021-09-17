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

chef1 = { user: user, first_name: "Tony", last_name: "Montana", speciality: "Italian food", rating: 5, price: "1200 TL", location: "Sisli,Istanbul,Turkey", description: "The king of the Italian cuisine"}
chef2 = { user: user2, first_name: "Mahmut", last_name: "Usta", speciality: "Turkish food", rating: 4, price: "800 TL", location: "Besiktas,Istanbul,Turkey", description: "Your best choice for a Turkish cuisine"}
chef3 = { user: user2, first_name: "Lea", last_name: "Monet", speciality: "French food", rating: 4, price: "800 TL", location: "Beyoglu,Istanbul,Turkey", description: "The professional you are looking for the French cuisine"}
chef4 = { user: user, first_name: "Manon", last_name: "Laurent", speciality: "French food", rating: 5, price: "1400 TL", location: "Uskudar,Istanbul,Turkey", description: "Your number one choice for French dishes"}
chef5 = { user: user, first_name: "Wang", last_name: "Li", speciality: "Chinese food", rating: 3, price: "500 TL", location: "Karakoy,Istanbul,Turkey ", description: "The best Chinese chef with nice prices"}
chef6 = { user: user3, first_name: "Chen", last_name: "Zhao", speciality: "Chinese food", rating: 4, price: "800 TL", location: "Fatih,Istanbul,Turkey ", description: "Number one chef for a Chinese cuisine"}
chef7 = { user: user, first_name: "Marco", last_name: "Giovanni", speciality: "Italian food", rating: 3, price: "500 TL", location: "Sariyer,Istanbul,Turkey ", description: "Talented chef with great price"}
chef8 = { user: user3, first_name: "Somer", last_name: "Sivri", speciality: "Turkish food", rating: 5, price: "1100 TL", location: "Kadikoy,Istanbul.Turkey ", description: "The godfather of the turkish cuisine"}
chef9 = { user: user3, first_name: "Haruto", last_name: "Asahi", speciality: "Japanese food", rating: 5, price: "1100 TL", location: "Sisli,Istanbul,Turkey", description: "Chef master of the Japanese cuisine"}
chef10 = { user: user3, first_name: "Sakura", last_name: "Kaito", speciality: "Japanese food", rating: 5, price: "1000 TL", location: "Besiktas,Istanbul,Turkey", description: "The queen of japanese dishes"}
chef11 = { user: user3, first_name: "Sarah", last_name: "John", speciality: "Dessert", rating: 4, price: "700 TL", location: "Besiktas,Istanbul,Turkey", description: "Her specialty is desserts"}
chef12 = { user: user3, first_name: "Alexander", last_name: "Paul", speciality: "Dessert", rating: 5, price: "1200 TL", location: "Sisli,Istanbul,Turkey", description: "Dessert master of Istabul"}
chef13 = { user: user3, first_name: "LuLu", last_name: "Aziz", speciality: "Dessert", rating: 5, price: "850 TL", location: "Beyoglu,Istanbul,Turkey", description: "Dessert chef with good quality and good prices"}
chef14 = { user: user3, first_name: "Kumar", last_name: "Danesh", speciality: "Indian Food", rating: 4, price: "800 TL", location: "Sariyer,Istanbul,Turkey", description: "Your indispensable chef for indian cuisine"}
chef15 = { user: user3, first_name: "Moh", last_name: "Adel", speciality: "Arabic Food", rating: 5, price: "1000 TL", location: "Karakoy,Istanbul,Turkey", description: "The best chef for those who want a Middle Eastern feast on their tables"}




[chef1, chef2, chef3, chef4, chef5, chef6, chef7, chef8, chef9, chef10, chef11, chef12, chef13, chef14, chef15].each do |attributes|
  chef = Chef.create!(attributes)
  puts "Created #{chef.first_name}"
end

puts "Finished!"
