class AddLocationsToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :start_location, :string
  	add_column :moves, :target_location, :string
  end
end
