class GearsController < ApplicationController
  def index
    shops_by_location = Shop.near(params[:location], 5)
    shop_ids = shops_by_location.collect { |shop| shop.id }

    date_params = params[:datefilter]
    date_params = date_params.split " - "
    shop_gears = Gear.by_shop shop_ids

    @gears = shop_gears.search_by_category(params[:category]).search_gear params[:quantity],
      date_params[0], date_params[1]

    # PRICE RANGE
    @price_from_param_value = 0;
    @price_to_param_value = 100;
    if params[:ad_price_range] == "true"
      price_range_params = params[:price_range]
      price_range_params = price_range_params.split "-"
      @price_from_param_value = price_range_params[0]
      @price_to_param_value = price_range_params[1]
      @gears = @gears.price_range @price_from_param_value, @price_to_param_value
    end

    # GEAR SIZE {}
    if params[:ad_gear_size] == "true"
      height_from = params[:height_from]
      height_to = params[:height_to]
      frame_size = params[:frame_size]

      if height_from != "" && height_to != ""
        height_from = height_from.to_i
        height_to = height_to.to_i

          gids1 = AttributeValue.find_by_sql("select gear_id from attribute_values
            where value between '#{height_from}' and '#{height_to}' and attribute_id = 41")
          gids1 = gids1.collect { |a| a.gear_id }

          gids2 = AttributeValue.find_by_sql("select gear_id from attribute_values
            where value between '#{height_from}' and '#{height_to}' and attribute_id = 42")
          gids2 = gids2.collect { |a| a.gear_id }

          @gears = @gears.by_gear_ids gids1
          @gears = @gears.by_gear_ids gids2
      end

      if frame_size != ""
          frame_size = frame_size.to_i
          gids3 = AttributeValue.find_by_sql("select gear_id from attribute_values
            where value = '#{frame_size}' and attribute_id = 43")
          gids3 = gids3.collect { |a| a.gear_id }

          @gears = @gears.by_gear_ids gids3
      end
    end

    # INSTANT BOOKING
    if params[:ad_instant_booking] == "true"
      instant_booking = params[:instant_booking]
      if instant_booking == "on"
        @gears = @gears.instant_booking_only
      end
    end

    # GEAR TYPE
    if params[:ad_gear_type] == "true"
      gear_type_attribute_id = params[:gear_type_attribute_id]

      if gear_type_attribute_id != ""
        # byebug
        gear_type_attribute_id = gear_type_attribute_id.to_i
        gids4 = AttributeValue.find_by_sql("select gear_id from attribute_values
          where attribute_id = #{gear_type_attribute_id}")
        gids4 = gids4.collect { |a| a.gear_id }

        @gears = @gears.by_gear_ids gids4
      end
    end

    # MORE FILTERS
    if params[:ad_more_filters] == "true"
      accesories_ids = params[:accesories_ids]
      rating_id = params[:rating_id]

      if accesories_ids != "" && accesories_ids != nil
        accesories_ids = "("+accesories_ids+")"
        gids5 = AttributeValue.find_by_sql("select distinct gear_id from attribute_values
          where attribute_id in #{accesories_ids}")
        gids5 = gids5.collect { |a| a.gear_id }

        @gears = @gears.by_gear_ids gids5
      end

      if rating_id != ""
        rating_id = rating_id.to_i
        gids5 = AttributeValue.find_by_sql("select * from shops
          where average_rating >= #{rating_id}")

        shop_ids2 = gids5.collect { |shop| shop.id }
        @gears = @gears.by_shop shop_ids2
      end
    end

    if @gears.length > 0
        has_filtered_gears_shop_ids = @gears.distinct.pluck(:shop_id)
        @shops = shops_by_location.has_filtered_gears has_filtered_gears_shop_ids

        @lat_long = []
        @shops.each do |shop|
          shop_location = {
            "title": shop.name,
            "lat": shop.latitude,
            "lng": shop.longitude,
            "description": "Details"
          }
          @lat_long.push shop_location
        end
    end
  end
end
