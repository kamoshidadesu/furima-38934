FactoryBot.define do
  factory :order_shipping do
    zip {'123-4567'}
    state_id { Faker::Number.between(from: 2, to: 48) }
    city { '渋谷区' }
    address{ '1-1' }
    phone { '1234567890' }
    token {"tok_abcdefghijk00000000000000000"}
  end
end