Microjobs::Application.routes.draw do
  post "/signup" => "User#signup"
  get "/signup" => "User#new"

  post "/login" => "User#signin"
  get "/login" => "User#login"

  get "/user" => "Dashboard#user_profile"
  get "/matches" => "Dashboard#potential_candidates"
  
end
