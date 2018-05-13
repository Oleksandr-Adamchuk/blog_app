FactoryBot.define do
  factory :comment, class: Comment do
    association :commentable, factory: :category
    author { Faker::Name.name }
    content { Faker::Lorem.paragraph }
  end
end
