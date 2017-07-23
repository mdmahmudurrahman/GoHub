class Gear < ApplicationRecord
  belongs_to :shop
  belongs_to :category
  has_many :wish_lists
  has_many :order_lists
  has_many :attribute_values, inverse_of: :gear

  # accepts_nested_attributes_for :order_lists

  accepts_nested_attributes_for :attribute_values

  enum currency: [:VND, :BD, :DKK]

  scope :search_by_category, ->category_id {where category_id: category_id}

  scope :search_gear, -> quantity, from_date, to_date{where "(#{quantity} <=
    (total_quantity - (select count(*)
    from order_lists where order_lists.gear_id = gears.id AND
    ((start_time > '#{from_date}' AND end_time < '#{to_date}') OR
    ('#{from_date}' between start_time and end_time) OR
    ('#{to_date}' between start_time and end_time)) AND
    status != \'3\')))"}

  mount_uploader :image, ImageUploader

  def test_data
    "test"
  end
end
