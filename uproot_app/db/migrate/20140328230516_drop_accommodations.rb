class DropAccommodations < ActiveRecord::Migration
  def change
  	drop_table :accommodations
  end
end
