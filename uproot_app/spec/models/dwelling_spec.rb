require 'spec_helper'

describe Dwelling do
	it { should belong_to(:destination) }
end