class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.string :uuid, null: false
      t.text :message
      t.boolean :item_active, default: true

      t.timestamps null: false
    end
    add_index :items, :uuid, unique: true
  end
end
