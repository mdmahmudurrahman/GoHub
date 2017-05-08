class CreateCategorySurfboards < ActiveRecord::Migration[5.1]
  def change
    create_table :category_surfboards do |t|
      t.string :name
      t.decimal :surfboard_size
      t.decimal :user_height
      t.string :ext_accessory

      t.timestamps
    end
  end
end
