FactoryBot.define do
  factory order_shipping do
    zip { 123-4567 }
    state { 2 }
    city { '渋谷区' }
    address{ '1-1' }
    phone { 1234567890 }
  end
end