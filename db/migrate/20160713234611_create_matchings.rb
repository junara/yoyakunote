class CreateMatchings < ActiveRecord::Migration
  def change
    create_table :matchings do |t|
      t.string :name
      t.integer :item_id
      t.string :match_type
      t.integer :user_id
      t.boolean :is_active, default: true
      t.string :uuid
      t.timestamps null: false
    end
  end
end
