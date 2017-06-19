class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :invoice_number
      t.string :receipt_number
      t.decimal :total_service_fee
      t.decimal :total_price_amount
      t.decimal :gohub_fee
      t.datetime :payment_date
      t.string :transaction_id
      t.integer :status

      t.timestamps
    end
  end
end
