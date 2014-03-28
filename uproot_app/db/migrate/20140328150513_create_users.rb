class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :current_address
    	t.string :city
    	t.string :state
    	t.integer :zip
    	t.boolean :admin?

    	t.string :password_digest
    	t.timestamps

    end
  end
end
