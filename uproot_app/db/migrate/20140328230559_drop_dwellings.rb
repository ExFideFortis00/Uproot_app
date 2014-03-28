class DropDwellings < ActiveRecord::Migration
  def change
  	drop_table :dwellings
  end
end
