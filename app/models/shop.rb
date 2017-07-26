class Shop < ApplicationRecord
  belongs_to :user
  has_many :gears
  has_many :reviews, ->{where(target_type: Review.target_types[:shop])},
    foreign_key: "target_id"

  geocoded_by :full_address
  after_validation :geocode

  def full_address
    "#{address_line_1}, #{city}, #{zipcode}, #{country}"
  end
end
