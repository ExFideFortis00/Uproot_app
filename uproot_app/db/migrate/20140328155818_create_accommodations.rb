class CreateAccommodations < ActiveRecord::Migration
  def change
    create_table :accommodations do |t|
    	t.integer :destination_id

    	t.timestamps
    end
  end
end
