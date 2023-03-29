require 'rails_helper'

RSpec.describe OrederShipping, type: :model do
  describe '商品購入の保存' do
    before do
      user_id = FactoryBot.create(:user)
      item_id = FactoryBot.create(:item)
      @order_shipping = FactoryBot.build(:order_shipping, user_id: user.id, item_id: item.id)
    end

    context '購入ができる場合' do
      it '郵便番号、都道府県、市町村、番地、電話番号が正しく入力されている場合' do
        except(@order_shipping).to be_valid
      end
      it '建物名は記入してなくても購入できる' do
        @order_shipping.building_name = ''
        except(@order_shipping).to be_valid
      end
    end

    context '購入ができない場合' do
      it '郵便番号が空では購入できない' do
      end
      it '都道府県が空では購入できない' do
      end
      it '市町村が空では購入できない' do
      end
      it '番地が空では購入できない' do
      end
      it '電話番号が空では購入できない' do
      end
      it '郵便番号が半角のハイフンを含んだ正しい形式でないと購入できない' do
      end
      it '電話番号の桁が10又は11でないと購入できない' do
      end
      it 'ユーザーが紐ついていないと購入できない' do
      end
      it '商品が紐づいていないと購入できない' do
      end
    end
  end
end


