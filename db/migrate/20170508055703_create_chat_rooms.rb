class CreateChatRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :chat_rooms do |t|
      t.integer :buyer_user_id
      t.integer :seller_user_id
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
