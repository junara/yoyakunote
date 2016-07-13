class CreateItemAccessPermittedUsers < ActiveRecord::Migration
  def change
    create_table :item_access_permitted_users do |t|
      t.string :permission

      t.timestamps null: false
    end
  end
end
