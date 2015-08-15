class CompanyDashboardController < ApplicationController
	def user_profile
		@user = User.first
	end

	def potential_candidates
		@matches = User.all
	end

	def notify_user
		user = User.find(params[:id])
		job = Jobpost.find(params[:jobid])

		message = "Hi, You have been assigned the job for #{job.description} with JOB-ID #{job.id}."
		to = user.mob_num

		exec("php ~/freedomhack/microjobs/external_files/sms.php #{to} #{message}")

	end
end
