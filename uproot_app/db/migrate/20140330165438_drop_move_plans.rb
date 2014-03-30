class DropMovePlans < ActiveRecord::Migration
  def change
  	drop_table :move_plans
  end
end
