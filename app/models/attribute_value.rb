class AttributeValue < ApplicationRecord
  belongs_to :attrib, class_name: "Attribute", foreign_key: "attribute_id"
  belongs_to :gear

  # scope :gear_ids_for_user_height_from, -> price_from, price_to {where("value
  #  between '167' and '175' and attribute_id = 42")}

  def gear_ids_for_user_height_from

  end
end
