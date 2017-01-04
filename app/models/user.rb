class User < ActiveRecord::Base
  # Remember to create a migration!
  has_secure_password
  validates_uniqueness_of :username
end
