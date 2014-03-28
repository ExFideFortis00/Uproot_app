class CreateMovers < ActiveRecord::Migration
  def change
    create_table :movers do |t|
    	t.integer :destination_id

    	t.timestamps
    end
  end
end
