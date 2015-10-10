FactoryGirl.define do
  factory :koan do
    name { Faker::App.name }
    codepen_slug { Faker::Internet.slug }
    github_slug { Faker::Internet.slug }
  end
end
