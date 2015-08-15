Microjobs::Application.routes.draw do
  post "/signup" => "User#signup"
  get "/signup" => "User#new"
end
