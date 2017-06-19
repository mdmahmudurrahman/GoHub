class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.references :user, foreign_key: true
      t.integer :target_id
      t.integer :target_type
      t.decimal :rating
      t.text :text_message

      t.timestamps
    end
  end
end
