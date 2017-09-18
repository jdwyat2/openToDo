class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_ID
      t.integer :list_ID
      t.string :listname

      t.timestamps null: false
    end
  end
end
