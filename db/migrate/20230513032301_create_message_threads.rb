class CreateMessageThreads < ActiveRecord::Migration[6.0]
  def change
    create_table :message_threads do |t|
      t.string :title
      t.integer :user_id
      t.integer :messages_count

      t.timestamps
    end
  end
end
