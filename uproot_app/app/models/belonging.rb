# == Schema Information
#
# Table name: belongings
#
#  id             :integer          not null, primary key
#  move_id        :integer
#  name           :string(255)
#  type           :string(255)
#  room           :string(255)
#  item_condition :string(255)
#  picture_url    :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

class Belonging < ActiveRecord::Base
	belongs_to :move

	validates(:name, :kind_of, :condition, { :presence => true })
end
