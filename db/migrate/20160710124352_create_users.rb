class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :uuid, null: false
      t.text :message
      t.string :email
      t.boolean :is_active, default: true
      t.string :password_digest

      t.timestamps null: false
    end
    add_index :users, :uuid, unique: true
  end
end
