module GearsHelper
  def categories
    Category.all
  end

  def bike_types
    Attribute.where(category_id: 1, attrib_type: 0)
  end

  def all_currency
    Gear.currencies.keys.collect {|key| [key.humanize, key]}
  end

  def snowboard_types
    Attribute.where(category_id: 2, attrib_type: 0)
  end

  def surfboard_types
    Attribute.where(category_id: 3, attrib_type: 0)
  end

  def bike_accessories
    Attribute.where(category_id: 1, attrib_type: 2)
  end

  def surfboard_accessories
    Attribute.where(category_id: 2, attrib_type: 2)
  end

  def snowboard_accessories
    Attribute.where(category_id: 3, attrib_type: 2)
  end

  def bike_details
    Attribute.where(category_id: 1, attrib_type: 1)
  end

  def surfboard_details
    Attribute.where(category_id: 2, attrib_type: 1)
  end

  def snowboard_details
    Attribute.where(category_id: 3, attrib_type: 1)
  end

  def locations user
    user.shops.all.collect do |shop|
      [shop.name, shop.id]
    end
  end
end
