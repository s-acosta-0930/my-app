class CreateOffsprings < ActiveRecord::Migration[6.0]
  def change
    create_table :offsprings do |t|
      t.integer :parent_id
      t.string :name
      t.date :dob
      t.integer :height_cm
      t.integer :weight_lbs
      t.integer :weight_oz
      t.string :gender
      t.integer :hair_color_id
      t.integer :eye_color_id

      t.timestamps
    end
  end
end
