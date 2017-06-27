# Category
["Bike", "Surfboard", "Snowboard", "Skiboard"]
  .each do |category|
  Category.create!(name: "#{category}")
end

category_bike = Category.find_by!(name: "Bike")
category_surfboard = Category.find_by!(name: "Surfboard")
category_snowboard = Category.find_by!(name: "Snowboard")

############## Attribute type => gear_type #####################
#Attribute: type => "gear_type(0)" for the category => "Bike(1)"
["Road", "Mountain", "Cruiser", "Folding", "Fixed Gear", "Single Speed",
  "Hybrid", "Children's", "Cargo", "Tandem", "Cyclocross", "BMX", "Traithlon",
  "Touring", "One of A Kind", "Electric", "Tricycle", "Recumbent", "Wheels",
  "Fat"].each do |bike_type|
    Attribute.create!(category_id: Category.first.id, name: "#{bike_type}", attrib_type: 0)
end

gear_type_road_bike = Attribute.find_by(name: "Road", attrib_type: 0)
gear_type_mountain_bike = Attribute.find_by(name: "Mountain", attrib_type: 0)
gear_type_cruiser_bike = Attribute.find_by(name: "Cruiser", attrib_type: 0)
gear_type_folding_bike = Attribute.find_by(name: "Folding", attrib_type: 0)
gear_type_fixed_gear_bike = Attribute.find_by(name: "Fixed Gear", attrib_type: 0)
gear_type_single_speed_bike = Attribute.find_by(name: "Single Speed", attrib_type: 0)
gear_type_hybrid_bike = Attribute.find_by(name: "Hybrid", attrib_type: 0)
gear_type_children_bike = Attribute.find_by(name: "Children's", attrib_type: 0)
gear_type_cargo_bike = Attribute.find_by(name: "Cargo", attrib_type: 0)
gear_type_tandem_bike = Attribute.find_by(name: "Tandem", attrib_type: 0)

#Attribute: type => "gear_type(0)" for the category => "Surfboard(2)"
["Surfboard", "Stand Up Paddle"].each do |surfboard_type|
  Attribute.create!(category_id: Category.second.id, name: "#{surfboard_type}", attrib_type: 0)
end

gear_type_surfboard_gear_surfboard = Attribute.find_by(name: "Surfboard", attrib_type: 0)
gear_type_stand_up_paddle_surfboard = Attribute.find_by(name: "Stand Up Paddle", attrib_type: 0)

#Attribute: type => "gear_type(0)" for the category => "Snowboard(3)"
["Skis", "Snowboard"].each do |snowboard_type|
  Attribute.create!(category_id: Category.third.id, name: "#{snowboard_type}", attrib_type: 0)
end

gear_type_skis_snowboard = Attribute.find_by(name: "Skis", attrib_type: 0)
gear_type_snowboard_gear = Attribute.find_by(name: "Snowboard", attrib_type: 0)

############## Attribute type => gear_details #####################
#Attribute: type => "gear_details(1)" for the category => "bike(1)"
["Bike Rider Height", "Bike Frame Size"].each do |bike_details|
  Attribute.create!(category_id: Category.first.id, name: "#{bike_details}", attrib_type: 1)
end

gear_details_bike_rider_height = Attribute.find_by(name: "Bike Rider Height", attrib_type: 1)
gear_details_bike_frame_size = Attribute.find_by(name: "Bike Frame Size", attrib_type: 1)

#Attribute: type => "gear_details(1)" for the category => "Surfboard(2)"
["Board Size", "User Weight"].each do |surfboard_details|
  Attribute.create!(category_id: Category.second.id, name: "#{surfboard_details}", attrib_type: 1)
end

gear_details_surfboard_board_size = Attribute.find_by(name: "Board Size", attrib_type: 1)
gear_details_surfboard_user_weight = Attribute.find_by(name: "User Weight", attrib_type: 1)

#Attribute: type => "gear_details(1)" for the category => "Snowboard(3)"
["Snowboard Size", "User Height", "Alpine", "Cross Country",
  "Non-release", "randonneé"].each do |snowboard_details|
    Attribute.create!(category_id: Category.third.id,
      name: "#{snowboard_details}", attrib_type: 1)
end

gear_details_snowboard_snowboard_size = Attribute.find_by(name: "Snowboard Size", attrib_type: 1)
gear_details_snowboard_user_height = Attribute.find_by(name: "User Weight", attrib_type: 1)

############## Attribute type => accessory #####################
#Attribute: type => "accessory(2)" for the category => "bike(1)"
["Lock", "Helmet", "Light", "Bell", "Reflector", "Basket",
  "Trailer", "Surfboard Rack"].each do |bike_accessory|
    Attribute.create!(category_id: Category.first.id, name: "#{bike_accessory}", attrib_type: 2)
end

accessory_bike_lock = Attribute.find_by(name: "Lock", attrib_type: 2)
accessory_bike_helmet = Attribute.find_by(name: "Helmet", attrib_type: 2)
accessory_bike_light = Attribute.find_by(name: "Light", attrib_type: 2)
accessory_bike_bell = Attribute.find_by(name: "Bell", attrib_type: 2)
accessory_bike_reflector = Attribute.find_by(name: "Reflector", attrib_type: 2)
accessory_bike_basket = Attribute.find_by(name: "Basket", attrib_type: 2)
accessory_bike_trailer = Attribute.find_by(name: "Trailer", attrib_type: 2)
accessory_bike_surfboard_rack = Attribute.find_by(name: "Surfboard Rack", attrib_type: 2)

#Attribute: type => "accessory(2)" for the category => "Surfboard(2)"
["Leash", "Wetsuit", "Car Rack", "Wax", "Board Bag", "Fins",
  "Paddles"].each do |surfboard_accessory|
    Attribute.create!(category_id: Category.second.id,
      name: "#{surfboard_accessory}", attrib_type: 2)
end

accessory_surfboard_leash = Attribute.find_by(name: "Leash", attrib_type: 2)
accessory_surfboard_wetsuit = Attribute.find_by(name: "Wetsuit", attrib_type: 2)
accessory_surfboard_car_rack = Attribute.find_by(name: "Car Rack", attrib_type: 2)
accessory_surfboard_wax = Attribute.find_by(name: "Wax", attrib_type: 2)

#Attribute: type => "accessory(2)" for the category => "Snowboard(3)"
["Alpine", "Cross Country", "Telemark", "Randonnée", "Non-release Binding",
 "Ski Poles", "Ski Boots", "Helmet", "Snowboard Boots", "Snowboard Bindings"]
  .each do |snowboard_accessory|
  Attribute.create!(category_id: Category.third.id,
    name: "#{snowboard_accessory}", attrib_type: 2)
end

# Community user [user1..user6]
["user1", "user2", "user3", "user4", "user5", "user6"].each do |u|
  User.new.tap do |user|
    user.name = u
    user.gender = 0
    user.date_of_birth = 20.years.ago
    user.email = "#{u}@user.user"
    user.password = "111111"
    user.password_confirmation = "111111"
    user.confirmed_at = Time.now
    user.user_type = 0
    user.skip_confirmation!
    user.save!
  end
end

# Corporate user(company) [user11..user16]
["user11", "user12", "user13", "user14", "user15", "user16"].each do |u|
  User.new.tap do |user|
    user.name = u
    user.gender = 0
    user.date_of_birth = 30.years.ago
    user.email = "#{u}@user.user"
    user.password = "111111"
    user.password_confirmation = "111111"
    user.confirmed_at = Time.now
    user.user_type = 1
    user.skip_confirmation!
    user.save!
  end
end

#Shops for corporate user(company) => user11
about_shop = "Biomega is a Copenhagen-based, Danish brand of designer bicycles. It is known
  for engaging international designers from outside the bicycle industry—including Marc Newson,
  Ross Lovegrove[1] and Karim Rashid— in designing its products.[2] In addition to producing
  bikes under its own name, Falcon produces bicycles under a joined brand with Puma AG. Biomega
  bicycles are represented in the design collections of both MOMA, SFMOMA and the Sir Terrence
  Conran Foundation Collection."

Shop.new.tap do |s|
  s.user_id = 7 # Corporate: user11
  s.name = "Biomega"
  s.address_line_1 = "Crowne Plaza Copenhagen Towers, orestads Boulevard 114-118,
    2300 Kobenhavn, Denmark"
  s.address_line_2 = "Crowne Plaza Copenhagen Towers, orestads Boulevard 114-118,
    2300 Kobenhavn, Denmark"
  s.zipcode = "2300"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4588776655"
  s.latitude = "55.626966"
  s.longitude = "12.577608"
  s.o_h_monday = "07:00"
  s.o_h_tuesday = "07:00"
  s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00"
  s.o_h_friday = "07:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 7 # Corporate: user11
  s.name = "Ekspres Klassisk Cykler"
  s.address_line_1 = "Norrebrogade 46, 2200 Kobenhavn N, Denmark"
  s.address_line_2 = "Crowne Plaza Copenhagen Towers, Ørestads Boulevard 114-118,
    2300 København, Denmark"
  s.zipcode = "2200"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4535358182"
  s.latitude = "55.689530"
  s.longitude = "12.556849"
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 3.5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 7 # Corporate: user11
  s.name = "Christiania Cykle"
  s.address_line_1 = "Fabriksomradet 91, 1440 Kobenhavn K, Denmark"
  s.address_line_2 = "Crowne Plaza Copenhagen Towers, Orestads Boulevard 114-118,
    2300 Kobenhavn, Denmark"
  s.zipcode = "2300"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4532954520"
  s.latitude = "55.673637"
  s.longitude = "12.601293"
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 4.5
  s.save!
end

#Shops for corporate user(company) => user12
Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Velorbis"
  s.address_line_1 = "Norre Farimagsgade 63, 1364 Kobenhavn K, Denmark"
  s.address_line_2 = "Norre Farimagsgade 63, 1364 Kobenhavn K, Denmark"
  s.zipcode = "1364"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4538112277"
  s.latitude = "55.685237"
  s.longitude = "12.568354"
  s.o_h_monday = "07:00"
  s.o_h_tuesday = "07:00"
  s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00"
  s.o_h_friday = "07:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 4
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Luca's Cykler"
  s.address_line_1 = "Fredensgade 15A, 2200 Kobenhavn N, Denmark"
  s.address_line_2 = "Fredensgade 15A, 2200 Kobenhavn N, Denmark"
  s.zipcode = "2200"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4523323983"
  s.latitude = "55.693027"
  s.longitude = "55.693027"
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 4.5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Noa cykler"
  s.address_line_1 = "Nordre Frihavnsgade 56, 2100 Kobenhavn o, Denmark"
  s.address_line_2 = "Nordre Frihavnsgade 56, 2100 Kobenhavn o, Denmark"
  s.zipcode = "2300"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4550697675"
  s.latitude = "55.702282"
  s.longitude = "12.583174"
  s.about = "Christiania Smedie star bag de originale Christiania Cykler.
    Smedien blev stiftet i begyndelsen af 1970 erne og er en af de eldst
    eksisterende virksomheder på Christiania."
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 4.5
  s.save!
end

#Shops for corporate user(company) => user13
Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Bernhard Cykler"
  s.address_line_1 = "Nordre Fasanvej 100, 2000 Frederiksberg, Denmark"
  s.address_line_2 = "Nordre Fasanvej 100, 2000 Frederiksberg, Denmark"
  s.zipcode = "2000"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4538112277"
  s.latitude = "55.688142"
  s.longitude = "12.528010"
  s.o_h_monday = "07:00"
  s.o_h_tuesday = "07:00"
  s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00"
  s.o_h_friday = "07:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 4
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Christiania Blacksmith"
  s.address_line_1 = "Melkevejen 83a, 1440 Kobenhavn K, Denmark"
  s.address_line_2 = "Melkevejen 83a, 1440 Kobenhavn K, Denmark"
  s.zipcode = "1440"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4532548748"
  s.latitude = "55.673991"
  s.longitude = "12.601233"
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Fri BikeShop, Kobenhavn NV"
  s.address_line_1 = "Tuborgvej 171, 2400 Kobenhavn NV, Denmark"
  s.address_line_2 = "Tuborgvej 171, 2400 Kobenhavn NV, Denmark"
  s.zipcode = "2400"
  s.city = "Kobenhavn"
  s.country = "Denmark"
  s.about = about_shop
  s.phone_number = "4550697675"
  s.latitude = "55.719514"
  s.longitude = "12.542482"
  s.o_h_monday = "10:00"
  s.o_h_tuesday = "10:00"
  s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00"
  s.o_h_friday = "10:00"
  s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00"
  s.o_h_holiday = "10:00"
  s.average_rating = 5
  s.save!
end

shop_biomega = Shop.find_by(name: "Biomega")
shop_ekspres_klassisk_cykler = Shop.find_by(name: "Ekspres Klassisk Cykler")
shop_christiania_blacksmith = Shop.find_by(name: "Christiania Blacksmith")
shop_noa_cykler = Shop.find_by(name: "Noa cykler")
shop_velorbis = Shop.find_by(name: "Velorbis")

#Gear: 1.category => bike(id: 1)  2.shop name => "Biomega"(id: 1)
about_bike = "Trek bicycle brand sells their products under the name of different
  brands like Electra Bicycle Company, Diamant bikes, Klein, Gary Fisher, etc. But,
  this company’s main headquarters are in Wisconsin. This brand is the biggest and
  leading Bicycles and cycling products in the whole world."

############## Biomega bikes, gear_type: road_bike ###################
Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

############ Ekspres Klassisk Cykler bikes, gear_type: road_bike ###############
Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

############ Christiania Blacksmith bikes, gear_type: road_bike ###########
Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end


########### Noa Cykler bikes, gear_type: road_bike ###############
Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end


########### Velorbis bikes, gear_type: road_bike ##############
Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_velorbis.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_road_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

############## Biomega bikes, gear_type: mountain_bike ###################
Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

############ Ekspres Klassisk Cykler bikes, gear_type: mountain_bike ###############
Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle", g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0, g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_ekspres_klassisk_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

############ Christiania Blacksmith bikes, gear_type: mountain_bike ###########
Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Gary Turner"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'8\"(145 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "54 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_christiania_blacksmith.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Giant"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'7\"(144 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "55 cm")
end

########### Noa Cykler bikes, gear_type: mountain_bike ###############
Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_mountain_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end

############## Biomega bikes, gear_type: folding_bike ###################
Gear.new.tap do |g|
  g.shop_id = shop_biomega.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Cannondale"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_folding_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "Any Height")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "51 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Merida Bicycle"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_folding_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'6\"(137 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "50 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Scott"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_folding_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "5'1\"(152 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "52 cm")
end

Gear.new.tap do |g|
  g.shop_id = shop_noa_cykler.id
  g.category_id = category_bike.id
  g.picture = ""
  g.title = "Santa Cruz"
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means available to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  g.save!

  AttributeValue.create!(attribute_id: gear_type_folding_bike.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: accessory_bike_lock.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_helmet.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_light.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_bell.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_reflector.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_basket.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_trailer.id, gear_id: Gear.last.id)
  AttributeValue.create!(attribute_id: accessory_bike_surfboard_rack.id, gear_id: Gear.last.id)

  AttributeValue.create!(attribute_id: gear_details_bike_rider_height.id,
    gear_id: Gear.last.id, value: "4'9\"(148 cm)")
  AttributeValue.create!(attribute_id: gear_details_bike_frame_size.id,
    gear_id: Gear.last.id, value: "53 cm")
end
