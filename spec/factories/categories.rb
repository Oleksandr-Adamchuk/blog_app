FactoryBot.define do
  factory :category, class: Category do
    name { Faker::Lorem.word }
    desc { Faker::Lorem.paragraph }
  end
end
