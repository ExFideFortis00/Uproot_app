class Destination < ActiveRecord::Base
	belongs_to :move

	has_many :dwellings
	has_many :vehicles
	has_many :new_neighborhoods
	has_many :accommodations
	has_many :movers

	validates(:state, { length: { is: 2 }})
  	validates(:zip, 	{ numericality: { only_integer: true }})
  	validates(:zip,   { length: { is: 5 }})

end