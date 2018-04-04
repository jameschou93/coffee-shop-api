# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
10.times do
  User.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )
end

20.times do
  Business.create(
    name: Faker::RickAndMorty.location,
    address: Faker::Address.street_address,
    city: Faker::Address.city,
    state: Faker::Address.state,
    zip: Faker::Address.zip_code,
    wifi: true,
    phone: Faker::PhoneNumber.cell_phone,
    bathroom: true
  )

  30.times do
    Feedback.create(
      comment: Faker::Lorem.sentence(2),
      coffee_score: rand(0..10),
      satisfaction_score: rand(0..10),
      noise_level: rand(0..10),
      user_id: rand(1..10),
      business_id: rand(1..20)
    )
  end
end
