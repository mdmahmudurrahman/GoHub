class CreateOrderLists < ActiveRecord::Migration[5.1]
  def change
    create_table :order_lists do |t|
      t.references :gear, foreign_key: true
      t.references :order, foreign_key: true
      t.date :start_time
      t.date :end_time
      t.decimal :price_amount
      t.decimal :service_fee
      t.integer :status
      t.date :booking_date

      t.timestamps
    end
  end
end
