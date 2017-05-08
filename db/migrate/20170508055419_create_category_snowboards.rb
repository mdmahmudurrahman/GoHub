class CreateCategorySnowboards < ActiveRecord::Migration[5.1]
  def change
    create_table :category_snowboards do |t|
      t.string :name
      t.decimal :snowboard_size
      t.decimal :user_height
      t.boolean :alpine
      t.boolean :cross_country
      t.boolean :non_release
      t.boolean :randonnee
      t.boolean :telemark
      t.string :ext_accessory

      t.timestamps
    end
  end
end
