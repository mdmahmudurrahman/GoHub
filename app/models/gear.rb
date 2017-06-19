class Gear < ApplicationRecord
  belongs_to :shop
  belongs_to :category
  has_many :wish_lists
  has_many :order_lists
  has_many :attribute_values
end
