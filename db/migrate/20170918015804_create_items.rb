class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :list_ID
      t.integer :item_ID
      t.string :itemname

      t.timestamps null: false
    end
  end
end
