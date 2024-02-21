require 'faker'
Restaurant.destroy_all

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: '75000, Paris',
    phone_number: Faker::PhoneNumber.phone_number,
    category: 'chinese',
  )
end
