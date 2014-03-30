class AddDescriptionToMoves < ActiveRecord::Migration
  def change
  	add_column :moves, :description, :string
  end
end
