class CreateColors < ActiveRecord::Migration[6.0]
  def change
    create_table :colors do |t|
      t.string :color_name
      t.string :image_url

      t.timestamps
    end
  end
end
