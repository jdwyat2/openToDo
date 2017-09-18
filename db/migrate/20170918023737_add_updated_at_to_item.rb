class AddUpdatedAtToItem < ActiveRecord::Migration
  def change
    add_column :items, :updated_at, :datetime
  end
end
