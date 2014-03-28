class ChangeInventories < ActiveRecord::Migration
  def change
  	rename_table :inventories, :belongings
  end
end
