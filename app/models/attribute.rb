class Attribute < ApplicationRecord
  belongs_to :category
  has_many :attribute_values
end
