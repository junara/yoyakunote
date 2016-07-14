class CreateMatchingConversations < ActiveRecord::Migration
  def change
    create_table :matching_conversations do |t|
      t.integer :matching_id
      t.integer :user_id
      t.text :message
      t.string :uuid

      t.timestamps null: false
    end
  end
end
