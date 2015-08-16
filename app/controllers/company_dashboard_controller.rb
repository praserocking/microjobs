class CompanyDashboardController < ApplicationController
	def user_profile
		@user = User.first
	end

	def potential_candidates
		@matches = User.all
	end

	def new_job_post

	end

	def job_post_save
		puts "* "*60
		puts params

		date = params[:daterange].split("-")

		new_job = Jobpost.new(job_description:params[:job_desc],job_start_date:date[0],job_end_date:date[1],job_type:params[:job_type],job_budget:params[:budget],employees_req:params[:quantity],job_location:params[:job_loc],company_id:session[:id])
		new_job.save
	end

	def notify_user
		user = User.find(params[:id])
		user.available = false
		user.save
		job = Jobpost.find(params[:jobid])

		message = "Hi, You have been assigned the job for #{job.description} with JOB-ID #{job.id}."
		to = user.mob_num

		exec("php ~/freedomhack/microjobs/external_files/sms.php #{to} #{message}")

	end
end
