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
        pay_item
        @order_shipping.save
        redirect_to root_path
      else
        render :index
      end
  end


  private
  def order_params
    params.require(:order_shipping). permit(:zip, :state_id, :city, :address, :building_name, :phone ).merge(user_id: current_user.id, item_id: params[:item_id], token: params[:token] )
  end

  def pay_item
    Payjp.api_key = ENV["PAYJP_SECRET_KEY"]
        Payjp::Charge.create(
          amount: @item.price,           # 商品の値段
          card: order_params[:token],    # カードトークン
          currency: 'jpy'                 # 通貨の種類（日本円）
        )
  end
end
