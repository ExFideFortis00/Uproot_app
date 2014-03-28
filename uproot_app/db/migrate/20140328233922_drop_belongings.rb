class DropBelongings < ActiveRecord::Migration
  def change
  	drop_table :belongings
  end
end
