class OrdersController < ApplicationController
  def index
  end

  def new
  end

  def create
    @order = Order.create(order_params)
    Shipping.create(shipping_params)
  end

  private
  def order_params
    params.permit(:item_id, :user_id).merge(user_id: current_user.id )
  end

  def shipping_params
    params.permit(:zip, :state_id, :city, :address, :building_name, :phone).merge(order_id: @order.id)
  end
end
