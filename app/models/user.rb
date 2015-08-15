class User < ActiveRecord::Base
  attr_accessible :available, :experience, :mob_num, :name, :password_digest, :preferred_jobs, :preferred_location, :ratings
  has_secure_password
end
