class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.integer :upc_id
      t.string :item_description
      t.string :image_url
      t.string :item_name
      t.float :price
      t.string :brand
      t.string :color
      t.string :size
      t.string :dimensions
      t.integer :reviews_count

      t.timestamps
    end
  end
end
