class AttributeValue < ApplicationRecord
  belongs_to :attrib, class_name: "Attribute", foreign_key: "attribute_id"
  belongs_to :gear, inverse_of: :attribute_values
end
