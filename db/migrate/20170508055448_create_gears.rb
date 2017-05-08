class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|
      t.references :shop, foreign_key: true
      t.integer :target_category_id
      t.integer :target_category_type
      t.string :picture
      t.string :title
      t.text :description
      t.integer :amount
      t.string :delivery
      t.string :currency
      t.decimal :price_per_day
      t.decimal :price_per_hour
      t.decimal :price_per_week
      t.decimal :delivery_price
      t.integer :status
      t.decimal :rating

      t.timestamps
    end
  end
end
