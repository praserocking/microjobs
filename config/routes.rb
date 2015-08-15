Microjobs::Application.routes.draw do
  post "/signup" => "User#signup"
  get "/signup" => "User#new"

  post "/signin" => "User#signin"
  get "/signin" => "User#login"

  get "/user" => "Dashboard#user_profile"
  get "/matches" => "Dashboard#potential_candidates"
  
end
