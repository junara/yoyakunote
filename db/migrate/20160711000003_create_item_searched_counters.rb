class CreateItemSearchedCounters < ActiveRecord::Migration
  def change
    create_table :item_searched_counters do |t|
      t.integer :count, default: 0
      t.integer :item_id
      t.timestamps null: false
    end
  end
end
