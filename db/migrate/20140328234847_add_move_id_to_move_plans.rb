class AddMoveIdToMovePlans < ActiveRecord::Migration
  def change
  	add_column :move_plans, :move_id, :integer
  end
end
