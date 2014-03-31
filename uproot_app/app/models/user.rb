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

class User < ActiveRecord::Base
# Adds methods to set and authenticate against a BCrypt password.
  # in active record we'll have a password and password_confirmation
  # in our database we'll store a salted hash password digest
  # http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html
  has_secure_password

  has_many :moves
  validates(:first_name, :last_name, :email, { :presence => true})
  validates(:email, { :uniqueness   => { case_sensitive: false }})
end


