require 'rails_helper'

RSpec.describe Item, type: :model do
  before do
    @item = FactoryBot.build(:item)
end


  describe'出品の保存' do
    context'出品ができる場合' do
      it '商品名、商品の説明、カテゴリー、商品の状態、配送料の負担、発送元の地域、発送までの日数、販売価格が存在すれば出品できる' do
      expect(@item).to be_valid
      end
  end
    context '出品ができない場合' do
      it '商品画像が空では出品できない' do
      end
      it '商品名が空では出品できない' do
      end
      it '商品の説明が空では出品できない' do
      end
      it 'カテゴリーが空では出品できない' do
      end
      it '商品の状態が空では出品ができない' do
      end
      it '配送料の負担が空では出品できない' do
      end
      it '発送元の地域が空では出品できない' do
      end
      it '発送までの日数が空では出品できない'do
      end
      it '販売価格が空では出品できない' do
      end

    end