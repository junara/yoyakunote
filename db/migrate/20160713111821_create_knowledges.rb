class CreateKnowledges < ActiveRecord::Migration
  def change
    create_table :knowledges do |t|
      t.string :image
      t.string :name
      t.text :message
      t.integer :user_id
      t.timestamps null: false
    end
  end
end
