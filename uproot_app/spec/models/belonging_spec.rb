require 'spec_helper'

describe Belonging do
	it { should belong_to(:move) }

	it { should validate_presence_of(:move_id) }
	it { should validate_presence_of(:name) }
end