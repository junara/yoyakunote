class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.boolean :is_active, default: true
      t.string :name, null: false
      t.string :uuid, null: false
      t.text :message
      t.string :manufacture_name
      t.string :manufacture_cn
      t.string :company
      t.string :prefecture
      t.string :address
      t.string :user_type
      t.string :item_type
      t.integer :user_id
      t.string :image
      t.string :webimage_url
      t.integer :favorite_counter
      t.integer :access_counter
      t.integer :activity_counter



      t.timestamps null: false
    end
    add_index :items, :uuid, unique: true
  end
end
