FactoryGirl.define do
  factory :koan do
    name { Faker::App.name }
    codepen_slug { Faker::Internet.slug }
    codepen_username { Faker::Internet.user_name }
  end
end
