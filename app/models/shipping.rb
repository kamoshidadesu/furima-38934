class Shipping < ApplicationRecord
  belongs_to :order

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :state

  with_options presence: true do
    validates :zip
    validates :state_id,numericality: { other_than: 1, message: "can't be blank" }
    validates :city
    validates :address
    validates :building_name
    validates :phone
    
end
