# == Schema Information
#
# Table name: belongings
#
#  id           :integer          not null, primary key
#  move_id      :integer
#  name         :string(255)
#  kind_of      :string(255)
#  picture_url  :string(255)
#  current_room :string(255)
#  condition    :string(255)
#  created_at   :datetime
#  updated_at   :datetime
#  target_room  :string(255)
#

class Belonging < ActiveRecord::Base
	belongs_to :move

	validates(:name, :kind_of, :condition, { :presence => true })
end
