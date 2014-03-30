class CreateMoves < ActiveRecord::Migration
  def change
    create_table :moves do |t|
    	t.integer :user_id
    	t.string :name
    	t.string :start_address
    	t.string :start_city
    	t.string :start_state
    	t.integer :start_zip
    	t.string :target_address
    	t.string :target_city
    	t.string :target_state
    	t.integer :target_zip
    	t.text :description
    	t.string :move_out_date
    	t.string :move_in_date
    	t.integer :target_budget
    	t.integer :actual_budget
    	t.timestamps
    end
  end
end
