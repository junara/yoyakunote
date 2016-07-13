class CreateMatchMessages < ActiveRecord::Migration
  def change
    create_table :match_messages do |t|
      t.integer :match_id
      t.integer :user_id
      t.text :message

      t.timestamps null: false
    end
  end
end
