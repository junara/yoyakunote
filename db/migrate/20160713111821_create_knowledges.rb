class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :name
      t.text :message
      t.string :uuid
      t.integer :user_id
      t.integer :item_id
      t.string :image
      t.string :webimage_url
      t.integer :favorite_counter
      t.integer :access_counter
      t.integer :activity_counter
      t.timestamps null: false
    end
  end
end
