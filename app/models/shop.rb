class Shop < ApplicationRecord
  belongs_to :user
  has_many :gears
  has_many :reviews
end
