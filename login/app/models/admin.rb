class Admin < ActiveRecord::Base
 acts_as_authentic
  attr_accessible :login, :password, :password_confirmation
  validates_presence_of :password
  validates_confirmation_of :password
end
