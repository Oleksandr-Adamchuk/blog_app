FactoryBot.define do
  factory :post, class: Post do
    name { Faker::WorldOfWarcraft.quote }
    content { Faker::Lorem.paragraph }
  end
end
