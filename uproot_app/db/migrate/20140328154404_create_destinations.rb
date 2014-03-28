class CreateDestinations < ActiveRecord::Migration
  def change
    create_table :destinations do |t|
    	t.integer :move_id
    	t.string :address
    	t.string :city
    	t.string :state, limit: 2
    	t.string :zip, limit: 5

    	t.timestamps
    end
  end
end
