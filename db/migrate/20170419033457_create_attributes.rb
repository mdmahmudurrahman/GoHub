class CreateAttributes < ActiveRecord::Migration[5.1]
  def change
    create_table :attributes do |t|
      t.references :category, foreign_key: true
      t.string :name
      t.integer :attrib_type

      t.timestamps
    end
  end
end
