class Item < ApplicationRecord
  belongs_to :user
  #has_one :buy
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category

  #空の投稿を保存できないようにする
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :state_id, presence: true
  validates :freight_id, presence: true
  validates :shipdate_id, presence: true
  validates :price, presence: true

  #ジャンルの選択が「---」の時は保存できないようにする
  validates :category_id, numericality: { other_than: 1 message: "can't be blank" } 
end
