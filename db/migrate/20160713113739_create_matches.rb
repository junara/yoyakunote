class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :item_id
      t.string :match_type
      t.boolean :is_active, default: true

      t.timestamps null: false
    end
  end
end