class CreateMovePlans < ActiveRecord::Migration
  def change
    create_table :move_plans do |t|
    	t.string :target_address
    	t.string :target_city
    	t.string :target_state
    	t.string :target_zip
    	t.text 	 :notes
    end
  end
end
