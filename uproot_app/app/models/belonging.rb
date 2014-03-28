class Belonging < ActiveRecord::Base
	belongs_to :move

	validates(:move_id, :name, { :presence => true })
end