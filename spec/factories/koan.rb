FactoryGirl.define do
  factory :koan do
    name { Faker::App.name }
    codepen_slug { Faker::Internet.slug }
    github_slug { Faker::Internet.slug }
    client_email_body { Faker::Lorem.sentence(3) }
  end
end
