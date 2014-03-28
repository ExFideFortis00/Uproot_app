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

require 'spec_helper'

describe Move do
	it { should have_many(:belongings) }
	it { should have_many(:move_plans) }


	it { should validate_presence_of(:user_id) }
	it { should validate_numericality_of(:budget) }
end	
