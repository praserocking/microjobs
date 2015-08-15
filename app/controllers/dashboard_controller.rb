class DashboardController < ApplicationController
	def user_profile
		@user = User.first
	end

	def potential_candidates
		@matches = User.all
	end
end
