class DropVehicles < ActiveRecord::Migration
  def change
  	drop_table :vehicles
  end
end
