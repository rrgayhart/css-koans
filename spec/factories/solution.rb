FactoryGirl.define do
  factory :solution do
    codepen_slug { Faker::Internet.slug }
    codepen_username { Faker::Internet.user_name }
    association :koan, factory: :koan
    image_file_name { 'image.gif' }
    image_content_type { 'image/gif' }
  end
end
