class ItemsController < ApplicationController
  def index 
    @items = Item.all
  end

  def index
    @items = Items.new
  end
end


private

def item_params
  params.require(:item).permit(:content, :image, :category_id ).merge(user_id: current_user.id)