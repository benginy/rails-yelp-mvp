# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Restaurant.destroy_all

restaurants = [
  { name: "Le Gourmet", address: "123 Rue de Paris", phone_number: "+33 1 23 45 67 89", category: "french" },
  { name: "Chez Pierre", address: "456 Avenue des Champs-Élysées", phone_number: "+33 1 98 76 54 32", category: "french" },
  { name: "La Belle Époque", address: "789 Boulevard Saint-Germain", phone_number: "+33 1 55 66 77 88", category: "french" },
  { name: "Le Petit Bistro", address: "321 Rue de Rivoli", phone_number: "+33 1 44 55 66 77", category: "french" },
  { name: "Café de Flore", address: "654 Place de la Concorde", phone_number: "+33 1 33 44 55 66", category: "french" }
]

restaurants.each do |restaurant|
  restaurant = Restaurant.create!(restaurant)
end

puts "Seeded #{Restaurant.count} restaurants."
