class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.integer :reviews_count
      t.integer :offsprings_count
      t.integer :message_threads_count

      t.timestamps
    end
  end
end
