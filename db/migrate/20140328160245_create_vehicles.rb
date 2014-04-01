class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
    	t.integer :destination_id

    	t.timestamps
    end
  end
end
