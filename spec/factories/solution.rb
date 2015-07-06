FactoryGirl.define do
  factory :solution do
    codepen_slug { Faker::Internet.slug }
    codepen_username { Faker::Internet.user_name }
    association :koan, factory: :koan
  end
end
