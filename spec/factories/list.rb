FactoryBot.define do
  factory :list do
    title { Faker::Lorem.characters(number:10) }
    body { Faker::Lorem.characters(number:30) }
    
    after(:build) do |list|
      list.image.attach(io: File.open(Rails.root.join('spec', 'support', 'app/assets/images/no_image.jpg')), filename: 'no_image.jpg', content_type: 'image/jpeg')
    end
  end
end