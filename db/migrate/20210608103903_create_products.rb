class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name
      t.float :price
      t.string :photo_url
      t.string :description
      t.references :category, null: false, foreign_key: true
      t.references :producer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
