class Attribute < ApplicationRecord
  belongs_to :category
  has_many :attribute_values

  enum attrib_type: [:gear_type, :gear_details, :accessory]

  scope :attributes, ->category_id, attrib_type {where "category_id = #{category_id}
    AND attrib_type = #{attrib_type}"}

  scope :search_gear, -> quantity, from_date, to_date{where "(#{quantity} <=
    (total_quantity - (select count(*)
    from order_lists where order_lists.gear_id = gears.id AND
    ((start_time > '#{from_date}' AND end_time < '#{to_date}') OR
    ('#{from_date}' between start_time and end_time) OR
    ('#{to_date}' between start_time and end_time)) AND
    status != \'3\')))"}
end
