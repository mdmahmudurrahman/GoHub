class AttributeValue < ApplicationRecord
  belongs_to :attrib, class_name: "Attribute"
  belongs_to :gear
end
