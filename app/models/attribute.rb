class Attribute < ApplicationRecord
  belongs_to :category
  has_many :attribute_values

  enum attrib_type: [:gear_type, :gear_details, :accessory]
end
