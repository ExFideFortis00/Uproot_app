class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name, null: false
    	t.string :last_name, null: false
    	t.string :email, null: false
    	t.string :current_address, null: false
    	t.string :city, null: false
    	t.string :state, limit: 2, null: false
    	t.integer :zip, limit: 5, null:false
    	t.boolean :admin?, default: false

    	t.string :password_digest
    	t.timestamps

    end
  end
end
