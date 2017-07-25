class Gear < ApplicationRecord
  belongs_to :shop
  belongs_to :category
  has_many :wish_lists
  has_many :order_lists
  has_many :attribute_values

  scope :search_by_category, ->category_id {where category_id: category_id}

  scope :by_shop, -> shop_ids {where(shop_id: shop_ids)}

  scope :search_gear, -> quantity, from_date, to_date {where "(#{quantity} <=
    (total_quantity - (select count(*)
    from order_lists where order_lists.gear_id = gears.id AND
    ((start_time > '#{from_date}' AND end_time < '#{to_date}') OR
    ('#{from_date}' between start_time and end_time) OR
    ('#{to_date}' between start_time and end_time)) AND
    status != \'3\')))"}

  scope :price_range, -> price_from, price_to {where("price_per_day BETWEEN
    #{price_from} AND #{price_to}")}

    scope :by_gear_ids, -> gear_ids {where(id: gear_ids)}

  scope :instant_booking_only, -> {where instant_booking: true}


  # scope :test99, -> {joins(:attribute_values).where("attribute_values.value == 167.64 and attribute_values.attribute_id = 41")}

  # scope :test19, -> { joins(:attribute_values => :gear ).where('attribute_values.attribute_id == 41') }

  # scope :test18, -> { joins(:attribute_values).where("attribute_values.id == 42") }

  # scope :user_height_from, -> height_from, height_to, attribute_id{joins(attribute_values: :gear_id).where("attribute_values.value between
  #   #{height_from} and #{height_to} and attribute_id = #{attribute_id}")}

  # scope :user_height_to, -> height_from, height_to, attribute_id{joins(attribute_values: :gear_id).where("attribute_values.value between
  #   #{height_from} and #{height_to} and attribute_id = #{attribute_id}")}

  # def self.where_1
  #   self.find_by_sql("
  #         select gears.* from attribute_values, gears where attribute_values.gear_id = gears.id and (value between '167' and '175' and attribute_id = 41)
  #       ")
  # end

  # def self.where_2
  #   self.find_by_sql("
  #         select gears.* from attribute_values, gears where attribute_values.gear_id = gears.id and (value between '167' and '175' and attribute_id = 42)
  #       ")
  # end
end
