FactoryBot.define do
  factory :item do

    image{Faker::Lorem.sentence}
    name {Faker::Name.name}
    description{Faker::Lorem.sentence}
    category_id{Faker::Number.between(from: 2, to: 11)}
    condition_id{Faker::Number.between(from: 2, to: 7)}
    state_id{Faker::Number.between(from: 2, to: 48)}
    freight_id{Faker::Number.between(from: 2, to: 3)}
    shipdate_id{Faker::Number.between(from: 2, to: 4)}
    price{Faker::Number.between(from: 300, to: 9999999)}
    association :user
    
  end
end
