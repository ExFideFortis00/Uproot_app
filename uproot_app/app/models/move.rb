class Move < ActiveRecord::Base

	belongs_to :user
	has_many :belongings
	has_many :destinations

	has_many :dwellings, :through => :destinations
	has_many :vehicles, :through => :desintations
	has_many :new_neighborhoods, :through => :destinations
	has_many :accommodations, :through => :destinations
	has_many :movers, :through => :destinations

	validates(:user_id, { :presence => true } )
	validates(:budget, { numericality: { only_integer: true }})
end