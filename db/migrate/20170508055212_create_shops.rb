class CreateShops < ActiveRecord::Migration[5.1]
  def change
    create_table :shops do |t|
      t.references :user, foreign_key: true
      t.string :name
      t.text :address_line_1
      t.text :address_line_2
      t.string :zipcode
      t.string :city
      t.string :country
      t.string :phone_number
      t.decimal :latitude
      t.decimal :longitude
      t.string :profile_picture
      t.string :cover_picture
      t.string :about
      t.integer :cancel_option
      t.time :o_h_monday
      t.time :o_h_tuesday
      t.time :o_h_wednesday
      t.time :o_h_thursday
      t.time :o_h_friday
      t.time :o_h_saturday
      t.time :o_h_sunday
      t.time :o_h_holiday
      t.decimal :average_rating

      t.timestamps
    end
  end
end
