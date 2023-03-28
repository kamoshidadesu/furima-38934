class OrdersController < ApplicationController
  def index
    @item = Item.all
  end

  def new
    @order_shippings = OrderShippings.new
  end

  def create
    @Order_shippings = OrderShippings.new(order_params)
      if @order_shippings.valid?
        @order_shippings.save
        redirect_to root_path
      else
        render root_path
  end
end

  private
  def order_params
    params.require(:order_shippings). permit(:zip, :state_id, :city, :address, :building_name, :phone).merge(user_id: current_user.id )
  end
end
