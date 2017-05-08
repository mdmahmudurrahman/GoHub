class Gear < ApplicationRecord
  belongs_to :shop
  has_many :wish_lists
  has_many :order_lists
  has_many :reviews
end
