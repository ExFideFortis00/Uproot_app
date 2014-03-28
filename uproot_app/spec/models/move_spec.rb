require 'spec_helper'

describe Move do
	it { should have_many(:belongings) }
	it { should have_many(:destinations) }
	it { should have_many(:dwellings).through(:destinations) }
	it { should have_many(:vehicles).through(:destinations) }
	it { should have_many(:new_neighborhoods).through(:destinations) }
	it { should have_many(:accommodations).through(:destinations) }
	it { should have_many(:movers).through(:destinations) }

	it { should validate_presence_of(:user_id) }
	it { should validate_numericality_of(:budget) }
end	