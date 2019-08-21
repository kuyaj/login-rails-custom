LoginApp::Application.routes.draw do
  #the root_path  
  root to:'logins#home'

  #these routes are showing users a login, a login form, loggin them in, and logging them out.
  get '/login'  => 'sessions#login'
  post '/login' => 'sessions#login_user'   
  get '/register' => 'sessions#register' 
  get '/logout' => 'sessions#logout'
  post '/users' => 'sessions#create_new_user'
end
