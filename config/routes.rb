Microjobs::Application.routes.draw do
  post "/signup" => "User#signup"
  get "/signup" => "User#new"

  post "/signin" => "User#signin"
  get "/signin" => "User#login"
end
