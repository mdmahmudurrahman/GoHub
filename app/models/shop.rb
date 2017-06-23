class Shop < ApplicationRecord
  belongs_to :user
  has_many :gears
  has_many :reviews, ->{where(target_type: Review.target_types[:shop])},
    foreign_key: "target_id"
end
