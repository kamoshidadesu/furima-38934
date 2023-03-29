class OrdersController < ApplicationController
  def index
    @order_shipping = OrderShipping.new
    @item = Item.find(params[:item_id])
  end

  def new
    @order_shipping = OrderShipping.new
  end

  def create
    @order_shipping = OrderShipping.new(order_params)
    @item = Item.find(params[:item_id])
    
      if @order_shipping.valid?
        @order_shipping.save
        redirect_to root_path
      else
        render :index
      end
  end


  private
  def order_params
    params.require(:order_shipping). permit(:zip, :state_id, :city, :address, :building_name, :phone ).merge(user_id: current_user.id, item_id: params[:item_id] )
  end
end
