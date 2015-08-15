class UserController < ApplicationController
	
	def new 
		@user = User.new
	end

	def signup
	end

	def signin
		mob_num = params[:mob_num]
		password = params[:password]

		user = User.find_by(mob_num:mob_num)

		unless user.blank?
			if user.authenticate password
				session[:id] = user.id
				session[:type] = user.type

				render :dashboard
			else
				render :error
			end
		end
	end
end
