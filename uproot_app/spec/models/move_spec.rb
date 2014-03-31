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
	it { should have_many(:belongings)}
	it { should belong_to(:user)}

	it { should validate_presence_of(:name)}
	# it { should ensure_length_of(:start_state).is_equal_to(2) }
	# it { should ensure_length_of(:target_state).is_equal_to(2) }
	# it { should ensure_length_of(:start_zip).is_equal_to(5) }
	# it { should ensure_length_of(:target_zip).is_equal_to(5) }

	# it { should validate_numericality_of(:target_budget).only_integer }
	# it { should validate_numericality_of(:actual_budget).only_integer }
	# it { should validate_numericality_of(:start_zip).only_integer }
	# it { should validate_numericality_of(:target_zip).only_integer }
end
