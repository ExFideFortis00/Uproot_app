class ChangeUsers < ActiveRecord::Migration
  def change
  	change_table :users do |t|
  		t.remove :current_address, :city, :state, :zip
  	end
  end
end
