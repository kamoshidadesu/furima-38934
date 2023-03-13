class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  # ユーザーの新規登録には、パスワードは確認用を含めて2回入力すること
  validates :password, confirmation: true
  # ユーザーの新規登録には、ニックネーム、メールアドレス、
  validates :nickname, presence: true
  validates :email, presence: true
  validates :last_name, presence: true
  validates :first_name, presence: true
  validates :last_name_kana, presence: true
  validates :first_name_kana, presence: true
  validates :birth, presence: true
  has_many :items
  has_many :buys
end
