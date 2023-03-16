class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise  :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  # ユーザーの新規登録には、パスワードは確認用を含めて2回入力すること
  validates :password,
            format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i },
            confirmation: true
  # ユーザーの新規登録には、ニックネーム、メールアドレス、
  validates :nickname,
            presence: true
  validates :last_name,
            presence: true,
            format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :first_name,
            presence: true,
            format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]+\z/ }
  validates :last_name_kana,
            presence: true,
            format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :first_name_kana,
            presence: true,
            format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birth,
            presence: true
  #has_many :items
  #has_many :buys
end
