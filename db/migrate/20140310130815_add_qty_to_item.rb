class AddQtyToItem < ActiveRecord::Migration
  def change
    add_column :items, :qty, :integer
  end
end
