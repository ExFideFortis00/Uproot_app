class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
    	t.integer :user_id
    	t.decimal :budget,
    			  :precision => 10,
    			  :scale => 2,
    			  :default => 0
    	t.timestamps
    end
  end
end
