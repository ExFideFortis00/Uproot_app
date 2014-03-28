class RenameDestinations < ActiveRecord::Migration
  def change
  	rename_table :destinations, :move_plans
  end
end
