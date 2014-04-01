class DropNewNeighborhoods < ActiveRecord::Migration
  def change
  	drop_table :new_neighborhoods
  end
end
