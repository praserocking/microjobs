class UserController < ApplicationController
	
	def new 
		
	end

	def signup
		@user = User.new(name: params[:name], mob_num: params[:mob_num], preferred_jobs: params[:preferred_jobs].join('/'), preferred_location: params[:preferred_location].join('/'),ratings: 0.0,available: true, experience: 0,password: params[:password])		
		if @user.save
			puts "Success"
		end
	end
end
