class CreateCategoryBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :category_bikes do |t|
      t.string :name
      t.decimal :frame_size
      t.decimal :user_height
      t.string :ext_accessory

      t.timestamps
    end
  end
end
