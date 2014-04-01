class DropMovers < ActiveRecord::Migration
  def change
  	drop_table :movers
  end
end
