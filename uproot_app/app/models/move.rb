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
	has_many :destinations

	has_many :dwellings, :through => :destinations
	has_many :vehicles, :through => :destinations
	has_many :new_neighborhoods, :through => :destinations
	has_many :accommodations, :through => :destinations
	has_many :movers, :through => :destinations

	validates(:user_id, { :presence => true } )
	validates(:budget, { numericality: { only_integer: true }})
end
