require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
end

  describe 'ユーザーの新規登録' do
  it 'nicknameとemailとpasswordとpassword_confirmationとlast_nameとfirst_nameとlast_name_kanaとfirst_name_kanaとbirthが存在すれば登録できる' do
  end
  it 'nicknameが空では登録できない' do
  end
  it 'emailが空では登録できない' do
  end
  it 'passwordが空では登録できない' do
  end
  it 'last_nameが空では登録できない' do
  end
  it 'first_nameが空では登録できない' do
  end
  it 'last_name_kanaが空では登録できない' do
  end
  it 'first_name_kanaが空では登録できない' do
  end
  it 'birthが空では登録できない' do
  end
  it 'passwordとpassword_confirmationが不一致では登録できない' do
  end
  it '重複したemailが存在するときは登録できない' do
  end
  it 'emailは@を含まないと登録できない' do
  end
  it 'passwordあ5文字以下では登録できない' do
  end
  it 'passwordは英字と数字両方を含まないと登録できない' do
  end
  it 'last_nameは英字、数字だと登録できない' do
  end
  it 'first_nameは英字、数字だと登録できない' do
  end
  it 'last_name_kanaは英字、数字、漢字、ひらがなだと登録できない' do
  end
  it 'first_name_kanaは英字、数字、漢字、ひらがなだと登録できない' do
  end
  
  end