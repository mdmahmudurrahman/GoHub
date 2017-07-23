class Category < ApplicationRecord
  has_many :attribs, class_name: "Attribute"

  def image
    self.name
  end
end
