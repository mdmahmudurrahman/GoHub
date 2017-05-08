class CreateCategorySkis < ActiveRecord::Migration[5.1]
  def change
    create_table :category_skis do |t|
      t.string :name
      t.decimal :ski_length
      t.decimal :user_height
      t.boolean :size_two_x_two
      t.boolean :side_two_x_four
      t.boolean :three_d
      t.boolean :chanel
      t.string :ext_accessory

      t.timestamps
    end
  end
end
