require 'spec_helper'

describe Accommodation do
	it { should belong_to(:destination) }
end