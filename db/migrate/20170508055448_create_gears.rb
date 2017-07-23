class CreateGears < ActiveRecord::Migration[5.1]
  def change
    create_table :gears do |t|
      t.references :shop, foreign_key: true
      t.references :category, foreign_key: true
      t.string :picture
      t.string :title
      t.text :description
      t.boolean :deliverable
      t.decimal :delivery_price
      t.string :currency
      t.decimal :price_per_day
      t.decimal :price_per_hour
      t.decimal :price_per_week
      t.integer :status
      t.boolean :instant_booking
      t.integer :total_quantity
      t.integer :free_quantity
      t.string :image

      t.timestamps
    end
  end
end
