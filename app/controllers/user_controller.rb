class UserController < ApplicationController
	
	def new 
		@user = User.new
	end

	def signup
	end
end
