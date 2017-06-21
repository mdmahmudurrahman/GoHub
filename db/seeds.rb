# Category
["Bike", "Surfboard", "Snowboard", "Skiboard"]
  .each do |category|
  Category.create!(name: "#{category}")
end

#Attribute: type accessory for the "bike" category
["Lock", "Helmet", "Light", "Bell", "Reflector", "Basket",
 "Trailer", "Surfboard Rack"].each do |bike_accessory|
  Attribute.create!(category_id: Category.first.id, name: "#{bike_accessory}", )
end

#Attribute: type accessory for the "Surfboard" category
["Leash", "Wetsuit", "Car Rack", "Wax", "Board Bag", "Fins",
 "Paddles"].each do |bike_accessory|
  Attribute.create!(category_id: Category.second.id, name: "#{bike_accessory}")
end

#Attribute: type accessory for the "Snowboard" category
["Alpine", "Cross Country", "Telemark", "Randonnée", "Non-release Binding",
 "Ski Poles", "Ski Boots", "Helmet", "Snowboard Boots", "Snowboard Bindings"]
  .each do |bike_accessory|
  Attribute.create!(category_id: Category.third.id, name: "#{bike_accessory}")
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
  s.zipcode = "2300", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4588776655", s.latitude = "55.626966", s.longitude = "12.577608"
  s.o_h_monday = "07:00", s.o_h_tuesday = "07:00", s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00", s.o_h_friday = "07:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00", s.o_h_holiday = "10:00", s.average_rating = 5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 7 # Corporate: user11
  s.name = "Ekspres Klassisk Cykler"
  s.address_line_1 = "Norrebrogade 46, 2200 Kobenhavn N, Denmark"
  s.address_line_2 = "Crowne Plaza Copenhagen Towers, Ørestads Boulevard 114-118,
    2300 København, Denmark"
  s.zipcode = "2200", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4535358182", s.latitude = "55.689530", s.longitude = "12.556849"
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 3.5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 7 # Corporate: user11
  s.name = "Christiania Cykle"
  s.address_line_1 = "Fabriksomradet 91, 1440 Kobenhavn K, Denmark"
  s.address_line_2 = "Crowne Plaza Copenhagen Towers, Orestads Boulevard 114-118,
    2300 Kobenhavn, Denmark"
  s.zipcode = "2300", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4532954520", s.latitude = "55.673637", s.longitude = "12.601293"
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 4.5
  s.save!
end

#Shops for corporate user(company) => user12
Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Velorbis"
  s.address_line_1 = "Norre Farimagsgade 63, 1364 Kobenhavn K, Denmark"
  s.address_line_2 = "Norre Farimagsgade 63, 1364 Kobenhavn K, Denmark"
  s.zipcode = "1364", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4538112277", s.latitude = "55.685237", s.longitude = "12.568354"
  s.o_h_monday = "07:00", s.o_h_tuesday = "07:00", s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00", s.o_h_friday = "07:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00", s.o_h_holiday = "10:00", s.average_rating = 4
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Luca's Cykler"
  s.address_line_1 = "Fredensgade 15A, 2200 Kobenhavn N, Denmark"
  s.address_line_2 = "Fredensgade 15A, 2200 Kobenhavn N, Denmark"
  s.zipcode = "2200", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4523323983", s.latitude = "55.693027", s.longitude = "55.693027"
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 4.5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 8 # Corporate: user12
  s.name = "Noa cykler"
  s.address_line_1 = "Nordre Frihavnsgade 56, 2100 Kobenhavn o, Denmark"
  s.address_line_2 = "Nordre Frihavnsgade 56, 2100 Kobenhavn o, Denmark"
  s.zipcode = "2300", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4550697675", s.latitude = "55.702282", s.longitude = "12.583174"
  s.about = "Christiania Smedie star bag de originale Christiania Cykler.
    Smedien blev stiftet i begyndelsen af 1970 erne og er en af de eldst
    eksisterende virksomheder på Christiania."
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 4.5
  s.save!
end

#Shops for corporate user(company) => user13
Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Bernhard Cykler"
  s.address_line_1 = "Nordre Fasanvej 100, 2000 Frederiksberg, Denmark"
  s.address_line_2 = "Nordre Fasanvej 100, 2000 Frederiksberg, Denmark"
  s.zipcode = "2000", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4538112277", s.latitude = "55.688142", s.longitude = "12.528010"
  s.o_h_monday = "07:00", s.o_h_tuesday = "07:00", s.o_h_wednesday = "07:00"
  s.o_h_thursday = "07:00", s.o_h_friday = "07:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "09:00", s.o_h_holiday = "10:00", s.average_rating = 4
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Christiania Blacksmith"
  s.address_line_1 = "Melkevejen 83a, 1440 Kobenhavn K, Denmark"
  s.address_line_2 = "Melkevejen 83a, 1440 Kobenhavn K, Denmark"
  s.zipcode = "1440", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4532548748", s.latitude = "55.673991", s.longitude = "12.601233"
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 5
  s.save!
end

Shop.new.tap do |s|
  s.user_id = 9 # Corporate: user13
  s.name = "Fri BikeShop, Kobenhavn NV"
  s.address_line_1 = "Tuborgvej 171, 2400 Kobenhavn NV, Denmark"
  s.address_line_2 = "Tuborgvej 171, 2400 Kobenhavn NV, Denmark"
  s.zipcode = "2400", s.city = "Kobenhavn", s.country = "Denmark", s.about = about_shop
  s.phone_number = "4550697675", s.latitude = "55.719514", s.longitude = "12.542482"
  s.o_h_monday = "10:00", s.o_h_tuesday = "10:00", s.o_h_wednesday = "10:00"
  s.o_h_thursday = "10:00", s.o_h_friday = "10:00", s.o_h_saturday = "08:00"
  s.o_h_sunday = "07:00", s.o_h_holiday = "10:00", s.average_rating = 5
  s.save!
end

#Gear: 1.category => bike(id: 1)  2.shop name => "Biomega"(id: 1)
about_bike = "Trek bicycle brand sells their products under the name of different
  brands like Electra Bicycle Company, Diamant bikes, Klein, Gary Fisher, etc. But,
  this company’s main headquarters are in Wisconsin. This brand is the biggest and
  leading Bicycles and cycling products in the whole world."

Gear.new.tap do |g|
  g.shop_id = Shop.first.id
  g.category_id = Category.first.id
  g.picture = ""
  g.description = about_bike
  g.currency = 1 # 1 means DKK
  g.price_per_hour = 1
  g.price_per_day = 5
  g.price_per_week = 20
  g.status = 0 # 0 means abailable to rent 1 means not available
  g.instant_booking = false
  g.total_quantity = 2
  g.free_quantity = 0
  s.save!

  AttributeValue.create()
end















