class Agent < ActiveRecord::Base
  attr_accessible :available, :experience, :max_emp_count, :mob_num, :name, :password_digest, :preferred_location, :rating
end
