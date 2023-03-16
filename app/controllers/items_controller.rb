class ItemsController < ApplicationController
  def index 
    @items = Item.all
  end

  def index
    @items = Items.new
  end
end
