class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :uuid, null: false
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :message

      t.integer :item_id

      t.timestamps null: false
    end
    add_index :reservations, :item_id
    add_foreign_key :reservations, :items, column: :item_id
  end
end
