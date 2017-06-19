class AttributeValue < ApplicationRecord
  belongs_to :attribute
  belongs_to :gear
end
