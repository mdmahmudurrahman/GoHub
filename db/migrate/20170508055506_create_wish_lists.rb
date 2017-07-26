class CreateWishLists < ActiveRecord::Migration[5.1]
  def change
    create_table :wish_lists do |t|
      t.references :user, foreign_key: true
      t.references :gear, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
