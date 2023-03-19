class Item < ApplicationRecord
  belongs_to :user
  #has_one :buy
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :condition
  belongs_to :state
  belongs_to :freight
  belongs_to :shipdate


  #空の投稿を保存できないようにする
  validates :image,presence: true
  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :state_id, presence: true
  validates :freight_id, presence: true
  validates :shipdate_id, presence: true
  validates :price, presence: true

  #ジャンルの選択が「---」の時は保存できないようにする
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :condition_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :state_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :freight_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :shipdate_id, numericality: { other_than: 1, message: "can't be blank" } 

  validates_inclusion_of :price, in:300..9999999, message: "is out of setting range"
end
