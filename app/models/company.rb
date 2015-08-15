class Company < ActiveRecord::Base
  attr_accessible :address, :email, :name, :organisation, :organisation_type, :password_digest
end
