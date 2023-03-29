class OrderShipping
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :zip, :state_id, :city, :address, :building_name, :phone

  with_options presence: true do
    validates :zip
    validates :state_id,numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :address
    validates :building_name
    validates :phone
    validates :user_id
    validates :item_id
end

  def save
    order = Order.create(item_id: item_id, user_id: user_id)

    Shipping.create(zip: zip, state_id: state_id, city: city, address: address, building_name: building_name, phone: phone, order_id: order.id)
  end
end