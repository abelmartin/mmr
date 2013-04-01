FactoryGirl.define do
  factory :user do
    first_name Faker::Name.first_name
    last_name Faker::Name.last_name
    email Faker::Internet.email
    password 'password'
    password_confirmation 'password'
  end

  factory :location do
    association :user
    address "#{Faker::Address.street_address} #{Faker::Address.city} #{Faker::Address.state}"
  end

  factory :route do
    association :user
    start_location {FactoryGirl.create :location}
    end_location {FactoryGirl.create :location}
  end
end
