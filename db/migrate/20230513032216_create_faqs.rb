class CreateFaqs < ActiveRecord::Migration[6.0]
  def change
    create_table :faqs do |t|
      t.integer :product_id
      t.string :question_description
      t.string :answer_description

      t.timestamps
    end
  end
end
