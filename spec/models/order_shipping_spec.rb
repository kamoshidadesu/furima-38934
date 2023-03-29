require 'rails_helper'

RSpec.describe OrderShipping, type: :model do
  
    before do
      @order_shipping = FactoryBot.build(:order_shipping)
      user_id = FactoryBot.create(:user)
      item_id = FactoryBot.create(:item)
      @order_shipping = FactoryBot.build(:order_shipping, user_id: user_id, item_id: item_id)
    end

    describe '商品購入の保存' do
      context '購入ができる場合' do
        it 'カード情報、郵便番号、都道府県、市町村、番地、電話番号が正しく入力されている場合' do
          expect(@order_shipping).to be_valid
        end
        it '建物名は記入してなくても購入できる' do
          @order_shipping.building_name = ''
          expect(@order_shipping).to be_valid
        end
      end

    context '購入ができない場合' do
      it '郵便番号が空では購入できない' do
        @order_shipping.zip = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Zip can't be blank")
      end
      it '都道府県が---では購入できない' do
        @order_shipping.state_id = 1
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("State can't be blank")
      end
      it '市町村が空では購入できない' do
        @order_shipping.city = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("City can't be blank")
      end
      it '番地が空では購入できない' do
        @order_shipping.address = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Address can't be blank")
      end
      it '電話番号が空では購入できない' do
        @order_shipping.phone = ''
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Phone can't be blank")
      end
      it 'カード情報が空では購入できない' do
      @order_shipping.token = ''
      @order_shipping.valid?
      expect(@order_shipping.errors.full_messages).to include("Token can't be blank")
      end
      it '郵便番号が半角の3桁ハイフン4桁でないと購入できない' do
        @order_shipping.zip = '123-45-678'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Zip is invalid")
      end
      it '電話番号が9桁以下であると購入できない' do
        @order_shipping.phone = '123456789'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Phone is invalid")
      end
      it '電話番号が11桁以上であると購入できない' do
        @order_shipping.phone = '1234567891011'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Phone is invalid")
      end
      it '電話番号が半角数値でないと購入できない' do
        @order_shipping.phone = '123-456789'
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Phone is invalid")
      end
      it 'user_idが紐ついていないと購入できない' do
        @order_shipping.user_id = nil
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("User can't be blank")
      end
      it 'item_idが紐づいていないと購入できない' do
        @order_shipping.item_id = nil
        @order_shipping.valid?
        expect(@order_shipping.errors.full_messages).to include("Item can't be blank")
      end
    end
  end
end


