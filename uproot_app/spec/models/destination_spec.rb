require 'spec_helper'

describe Destination do
	it { should have_many(:dwellings) }
	it { should have_many(:vehicles) }
	it { should have_many(:new_neighborhoods) }
	it { should have_many(:accommodations) }
	it { should have_many(:movers) }

	it { should validate_numericality_of(:zip) }
	it { should ensure_length_of(:state).is_equal_to(2) }
	it { should ensure_length_of(:zip).is_equal_to(5) }

	



end