class AddItemdetailToItem < ActiveRecord::Migration
  def change
    add_column :items, :itemdetail, :string
  end
end
