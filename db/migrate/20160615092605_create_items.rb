class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :uuid
      t.text :message

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index :uuid, unique: true
    end
  end
end
