class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories do |t|
    	t.integer :move_id
    	t.string :name
    	t.string :type
    	t.string :room
    	t.string :item_condition 
    	t.string :picture_url

    	t.timestamps
    end
  end
end
