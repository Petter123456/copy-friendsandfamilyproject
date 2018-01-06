class User < ApplicationRecord
  has_secure_password #get algorythm from bcrypt to give us a secure
  validates_uniqueness_of :email
end
