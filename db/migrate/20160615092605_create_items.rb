class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :uuid, null: false
      t.text :message
      t.string :manufacture_name
      t.string :manufacture_cn
      t.boolean :is_active, default: true
      t.string :company
      t.string :prefecture
      t.string :address
      t.string :user_type
      t.string :item_type

      t.timestamps null: false
    end
    add_index :items, :uuid, unique: true
  end
end
