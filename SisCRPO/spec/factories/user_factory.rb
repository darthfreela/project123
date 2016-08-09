FactoryGirl.define do
  factory :user do
    name { Faker::Name.name }
    username { Faker::Internet.user_name(name) }
    password 'f4k3p455w0rd'
    password_confirmation 'f4k3p455w0rd'
  end
end
