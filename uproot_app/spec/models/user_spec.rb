# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  first_name      :string(255)      not null
#  last_name       :string(255)      not null
#  email           :string(255)      not null
#  current_address :string(255)      not null
#  city            :string(255)      not null
#  state           :string(2)        not null
#  zip             :integer          not null
#  admin?          :boolean          default(FALSE)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe User do
	it { should have_many(:moves) }

	it { should validate_presence_of(:first_name) }
	it { should validate_presence_of(:last_name) }
	it { should validate_presence_of(:email) }
	it { should have_secure_password }
end
