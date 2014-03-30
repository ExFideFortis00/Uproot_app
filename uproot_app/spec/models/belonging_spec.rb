# == Schema Information
#
# Table name: belongings
#
#  id             :integer          not null, primary key
#  move_id        :integer
#  name           :string(255)
#  type           :string(255)
#  room           :string(255)
#  item_condition :string(255)
#  picture_url    :string(255)
#  created_at     :datetime
#  updated_at     :datetime
#

require 'spec_helper'

describe Belonging do
	it { should belong_to(:move) }

	it { should validate_presence_of(:name) }
end
