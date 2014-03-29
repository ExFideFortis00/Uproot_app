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
	has_many :move_plans

	validates(:user_id, { :presence => true } )
	validates(:budget, { numericality: { only_integer: true }})
end
