class AttributeValue < ApplicationRecord
  belongs_to :attrib, class_name: "Attribute", foreign_key: "attribute_id"
  belongs_to :gear
end
