class CreateBelongings < ActiveRecord::Migration
  def change
    create_table :belongings do |t|
    	t.integer :move_id
    	t.string :name
    	t.string :kind_of
    	t.string :picture_url
    	t.string :room
    	t.string :item_condition
    	t.timestamps
    end
  end
end
