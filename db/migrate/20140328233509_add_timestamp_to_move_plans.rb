class AddTimestampToMovePlans < ActiveRecord::Migration
  def change
  	add_column :move_plans, :created_at, :datetime
  	add_column :move_plans, :updated_at, :datetime
  end	
end
