class User < ActiveRecord::Base
# Adds methods to set and authenticate against a BCrypt password.
  # in active record we'll have a password and password_confirmation
  # in our database we'll store a salted hash password digest
  # http://api.rubyonrails.org/classes/ActiveModel/SecurePassword/ClassMethods.html
  has_secure_password

  has_many :moves

  validates(:first_name, :last_name, :email, :current_address, :city, :state, :zip, { :presence => true})

  validates(:email, { :uniqueness   => { case_sensitive: false }})
  validates(:state, { length: { is: 2 }})
  # validates(:zip, 	{ numericality: { only_integer: true }})
  # validates(:zip,   { length: { is: 5 }})
end


