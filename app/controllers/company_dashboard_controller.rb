class CompanyDashboardController < ApplicationController
	def user_profile
		@user = User.first
	end

	def job_post
		@job_posts = Jobpost.where(company_id:session[:id])
	end
	def potential_candidates
		job_id = session[:jobid]
		current_job = Jobpost.where(id: job_id).first
		location = current_job.job_location
		job_type = current_job.job_type
		list_of_users = User.all
		@matches = []
		list_of_users.each do |user|
			if user.preferred_location.split("/").include?(location) and user.preferred_jobs.split("/").include?(job_type)
				@matches<<user
			end
		end
	end

	def notify_user
		user = User.find(params[:id])
		job = Jobpost.find(params[:jobid])

		message = "Hi, You have been assigned the job for #{job.description} with JOB-ID #{job.id}."
		to = user.mob_num

		exec("php ~/freedomhack/microjobs/external_files/sms.php #{to} #{message}")

	end
end
