Restaurant.destroy_all
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts 'Creating restaurants...'
epicure = { name: 'epicure', address: '1 perry', phone_number: '111', category: 'french' }
covespice = { name: 'covespice', address: '2 orchid', phone_number: '222', category: 'italian' }
ramen = { name: 'ramen', address: '3 jacaranda', phone_number: '333', category: 'japanese' }
sweetescape = { name: 'sweetescape', address: '4 sweetness', phone_number: '444', category: 'belgian' }
noodletown = { name: 'noodletown', address: '5 noodler', phone_number: '555', category: 'chinese' }

[epicure, covespice,ramen, sweetescape, noodletown].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts 'Finished'
