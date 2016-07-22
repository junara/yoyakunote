class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :uuid, null: false
      t.text :message
      t.string :email
      t.boolean :is_active, default: true
      t.string :password

      t.string :password_digest

      t.string :company
      t.string :prefecture
      t.string :address
      t.string :user_type
      t.string :image
      t.string :webimage_url
      t.integer :favorite_counter
      t.integer :access_counter
      t.integer :activity_counter

      t.timestamps null: false
    end
    add_index :users, :uuid, unique: true
  end
end
