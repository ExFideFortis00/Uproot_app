# == Schema Information
#
# Table name: destinations
#
#  id         :integer          not null, primary key
#  move_id    :integer
#  address    :string(255)
#  city       :string(255)
#  state      :string(2)
#  zip        :string(5)
#  created_at :datetime
#  updated_at :datetime
#

class MovePlan < ActiveRecord::Base
	belongs_to :move

end
