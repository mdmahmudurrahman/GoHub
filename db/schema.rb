# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170521064842) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "category_bikes", force: :cascade do |t|
    t.string "name"
    t.decimal "frame_size"
    t.decimal "user_height"
    t.string "ext_accessory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_skis", force: :cascade do |t|
    t.string "name"
    t.decimal "ski_length"
    t.decimal "user_height"
    t.boolean "size_two_x_two"
    t.boolean "side_two_x_four"
    t.boolean "three_d"
    t.boolean "chanel"
    t.string "ext_accessory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_snowboards", force: :cascade do |t|
    t.string "name"
    t.decimal "snowboard_size"
    t.decimal "user_height"
    t.boolean "alpine"
    t.boolean "cross_country"
    t.boolean "non_release"
    t.boolean "randonnee"
    t.boolean "telemark"
    t.string "ext_accessory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_surfboards", force: :cascade do |t|
    t.string "name"
    t.decimal "surfboard_size"
    t.decimal "user_height"
    t.string "ext_accessory"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chat_messages", force: :cascade do |t|
    t.bigint "chat_room_id"
    t.bigint "user_id"
    t.text "message"
    t.datetime "timestamp"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["chat_room_id"], name: "index_chat_messages_on_chat_room_id"
    t.index ["user_id"], name: "index_chat_messages_on_user_id"
  end

  create_table "chat_rooms", force: :cascade do |t|
    t.integer "buyer_user_id"
    t.integer "seller_user_id"
    t.bigint "order_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_chat_rooms_on_order_id"
  end

  create_table "gears", force: :cascade do |t|
    t.bigint "shop_id"
    t.integer "target_category_id"
    t.integer "target_category_type"
    t.string "picture"
    t.string "title"
    t.text "description"
    t.integer "amount"
    t.string "delivery"
    t.string "currency"
    t.decimal "price_per_day"
    t.decimal "price_per_hour"
    t.decimal "price_per_week"
    t.decimal "delivery_price"
    t.integer "status"
    t.decimal "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["shop_id"], name: "index_gears_on_shop_id"
  end

  create_table "order_lists", force: :cascade do |t|
    t.bigint "gear_id"
    t.bigint "order_id"
    t.time "start_time"
    t.time "end_time"
    t.decimal "total_price"
    t.integer "status"
    t.date "booking_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gear_id"], name: "index_order_lists_on_gear_id"
    t.index ["order_id"], name: "index_order_lists_on_order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id"
    t.string "invoice_number"
    t.string "receipt_number"
    t.integer "gear_rent"
    t.decimal "service_fee"
    t.decimal "total_price"
    t.decimal "gohub_fee"
    t.datetime "payment_date"
    t.string "transaction_id"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gear_id"
    t.decimal "rating"
    t.text "text_message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gear_id"], name: "index_reviews_on_gear_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "shops", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.text "address_line_1"
    t.text "address_line_2"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.string "phone_number"
    t.string "profile_picture"
    t.string "cover_picture"
    t.string "about"
    t.integer "cancel_option"
    t.time "o_h_monday"
    t.time "o_h_tuesday"
    t.time "o_h_wednesday"
    t.time "o_h_thursday"
    t.time "o_h_friday"
    t.time "o_h_saturday"
    t.time "o_h_sunday"
    t.time "o_h_holiday"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_shops_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "gender"
    t.date "date_of_birth"
    t.integer "language"
    t.text "address_line_1"
    t.text "address_line_2"
    t.string "zipcode"
    t.string "city"
    t.string "country"
    t.string "phone_number"
    t.string "vat_id_number"
    t.string "profile_picture"
    t.string "cover_picture"
    t.boolean "email_verified"
    t.boolean "phone_verified"
    t.boolean "vat_id_number_verified"
    t.boolean "send_newsletter"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "wish_lists", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "gear_id"
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gear_id"], name: "index_wish_lists_on_gear_id"
    t.index ["user_id"], name: "index_wish_lists_on_user_id"
  end

  add_foreign_key "chat_messages", "chat_rooms"
  add_foreign_key "chat_messages", "users"
  add_foreign_key "chat_rooms", "orders"
  add_foreign_key "gears", "shops"
  add_foreign_key "order_lists", "gears"
  add_foreign_key "order_lists", "orders"
  add_foreign_key "orders", "users"
  add_foreign_key "reviews", "gears"
  add_foreign_key "reviews", "users"
  add_foreign_key "shops", "users"
  add_foreign_key "wish_lists", "gears"
  add_foreign_key "wish_lists", "users"
end
