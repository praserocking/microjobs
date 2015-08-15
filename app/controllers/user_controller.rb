class UserController < ApplicationController
	
	def new 
		
	end

	def signup
		if params[:type]=="user"
			@user = User.new(name: params[:name], mob_num: params[:mob_num], preferred_jobs: params[:preferred_jobs].join('/'), preferred_location: params[:preferred_location].join('/'),ratings: 0.0,available: true, experience: 0,password: params[:password])			
		elsif params[:type]=="agent"
			@user = Agent.new(name: params[:name], mob_num: params[:mob_num], max_emp_count: params[:max_emp_count], preferred_emp_type: params[:preferred_emp_type].join('/'),preferred_job_location: params[:preferred_job_location].join('/'),ratings: 0.0,available: true, experience: 0,password: params[:password])		
		else
			@user = Company.new(name: params[:name], organisation: params[:organisation], organisation_type: params[:organisation_type].join('/'), email: params[:email],address: params[:address],password: params[:password])		
		end
		if @user.save
			puts "Success"
		end
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
