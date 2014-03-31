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
	# validates(:target_budget, :actual_budget, { numericality: { only_integer: true }})
	# validates(:start_state, :target_state, { length: { is: 2 }})
	# validates(:start_zip, :target_zip, { length: { is: 5 }})
	# validates(:start_zip, :target_zip, { numericality: { only_integer: true }})
end
