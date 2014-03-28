class CreateNewNeighborhood < ActiveRecord::Migration
  def change
    create_table :new_neighborhoods do |t|
    	t.integer :destination_id

    	t.timestamps
    end
  end
end
