FactoryGirl.define do
  factory :location do
    address "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::Address.state}"
  end

  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password 'password'
    password_confirmation 'password'
  end
end
