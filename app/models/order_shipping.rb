class OrderShipping
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip, :state_id, :city, :address, :building_name, :phone, :token

  with_options presence: true do
    validates :zip, format: { with: /\A\d{3}-\d{4}\z/, message: 'is invalid. Enter it as follows (e.g. 123-4567)' }
    validates :state_id, numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :address
    validates :phone, format: { with: /\A\d{10,11}\z/ }
    validates :user_id
    validates :item_id
    validates :token
  end

  def save
    order = Order.create(item_id: item_id, user_id: user_id)

    Shipping.create(zip: zip, state_id: state_id, city: city, address: address, building_name: building_name, phone: phone,
                    order_id: order.id)
  end
end
