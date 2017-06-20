class Category < ApplicationRecord
  has_many :attribs, class_name: "Attribute"
end
