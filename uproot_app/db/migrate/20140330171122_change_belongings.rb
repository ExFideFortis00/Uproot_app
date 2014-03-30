class ChangeBelongings < ActiveRecord::Migration
  def change
  	rename_column :belongings, :item_condition, :condition
  	rename_column :belongings, :room, :current_room
  	add_column :belongings, :target_room, :string
  end
end
