# == Schema Information
#
# Table name: moves
#
#  id             :integer          not null, primary key
#  user_id        :integer
#  name           :string(255)
#  start_address  :string(255)
#  start_city     :string(255)
#  start_state    :string(255)
#  start_zip      :integer
#  target_address :string(255)
#  target_city    :string(255)
#  target_state   :string(255)
#  target_zip     :integer
#  description    :text
#  move_out_date  :string(255)
#  move_in_date   :string(255)
#  target_budget  :integer
#  actual_budget  :integer
#  created_at     :datetime
#  updated_at     :datetime
#

	# == Schema Information
#
# Table name: moves
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  budget     :decimal(10, 2)   default(0.0)
#  created_at :datetime
#  updated_at :datetime
#

class Move < ActiveRecord::Base
	belongs_to :user
	has_many :belongings

	validates(:name, { :presence => true })

	#make sure that the budget elements are integers only
	# validates(:target_budget, :actual_budget, { numericality: { only_integer: true }})
	
	#make sure that zip codes are only integers
	# validates(:start_zip, :target_zip, { numericality: { only_integer: true }})
	
	#to noramlize data for sorting purposes later, states should only be expresed in two letters (Ex. NY for New York)
	# validates(:start_state, :target_state, { length: { is: 2 }})
	
	#to normalize data and ensure that zip codes are only expressed as 5 integers
	# validates(:start_zip, :target_zip, { length: { is: 5 }})
end
