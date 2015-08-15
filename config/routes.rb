Microjobs::Application.routes.draw do
  post "/signup" => "User#signup"
  get "/signup" => "User#new"

  post "/signin" => "User#signin"
  get "/signin" => "User#login"

  get "/user" => "CompanyDashboard#user_profile"
  get "/candidate_matches" => "CompanyDashboard#potential_candidates"
  
  get "/job_matches" => "User#potential_jobs"
  get "/job" =>"User#job"
  
end
