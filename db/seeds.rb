# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
require 'date'
byebug
# require 'securerandom'
ship_name = Faker::Name.first_name + Faker::Name.last_name
phone_number = Faker::PhoneNumber.phone_number
ship_address= Faker::Address.street_address
ship_from_name = Faker::Company.name
ship_from_address = 
" #{Faker::Address.street_name} #{Faker::Address.city} #{Faker::Address.state} #{Faker::Address.zip_code}"
random_number = rand(2..5)
# byebug

carriers = ["USPS", "FEDEX", "DHL", 'UPS']

# <----compnay seeds ---->
50.times do 
Company.create(name: ship_from_name)
end 
# <----compnay seeds ---->


# <----Carrier Seeds --->
carriers.each do |carrierr|
Carrier.create(name: carrier)
end 
# <----Carrier Seeds --->

# <-----Shimpment Seeds ----->
50.times do 
Shipment.create(company_id: rand(1..Company.all.length),carrier_id:rand(1..Carrier.all.length), ship_to_name:ship_name, ship_to_address: ship_address,
     ship_from_name: ship_from_name, ship_from_address:ship_from_address, package_weight: random_number.to_f,
     created_at: Date.today - random_number, estimated_delivery: Date.today, cost: random_number.to_f)
end
# <-----Shimpment Seeds ----->

Shipment.all.each do |shipment|
Delivery.create(shipment_id: shipment.id, company_id: shipment.company.id, carrier_id: shipment.carrier.id)
end



