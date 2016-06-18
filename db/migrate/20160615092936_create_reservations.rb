class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.datetime :start_datetime
      t.datetime :end_datetime
      t.string :message
      t.references :item, index: true, foreign_key: true

      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
    end
  end
end
