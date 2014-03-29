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

require 'spec_helper'

describe MovePlan do
	it { should belong_to(:move) }

	it { should ensure_length_of(:target_state).is_equal_to(2) }
	it { should validate_numericality_of(:target_zip) }
	it { should ensure_length_of(:target_zip).is_equal_to(5) }

end
