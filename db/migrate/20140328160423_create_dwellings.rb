class CreateDwellings < ActiveRecord::Migration
  def change
    create_table :dwellings do |t|
    	t.integer :destination_id

    	t.timestamps
    end
  end
end
