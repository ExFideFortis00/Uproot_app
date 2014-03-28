require 'spec_helper'

describe User do
	it { should have_many(:moves) }

	it { should validate_presence_of(:first_name) }
	it { should validate_presence_of(:last_name) }
	it { should validate_presence_of(:email) }
	it { should validate_presence_of(:current_address) }
	it { should validate_presence_of(:city) }
	it { should validate_presence_of(:state) }
	it { should validate_presence_of(:zip) }

	it { should have_secure_password }
	it { should validate_numericality_of(:zip) }
	it { should ensure_length_of(:state).is_equal_to(2) }
	it { should ensure_length_of(:zip).is_equal_to(5) }
end