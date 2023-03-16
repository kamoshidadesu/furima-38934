class Item < ApplicationRecord
  belongs_to :user
  #has_one :buy

  validates :name, presence: true
  validates :description, presence: true
  validates :category_id, presence: true
  validates :condition_id, presence: true
  validates :state_id, presence: true
  validates :freight_id, presence: true
  validates :shipdate_id, presence: true
  validates :price, presence: true
end
