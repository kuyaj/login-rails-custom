LoginApp::Application.routes.draw do
  #the root_path  
  root to:'logins#home'

  #these routes are showing users a login, a login form, loggin them in, and logging them out.
  get '/login' => 'sessions#login'
  post '/login' => 'sessions#create_new_user'
  get '/logout' => 'sessions#logout'

  #login or create new user
  #this is for users controller
  get '/signup' => 'users#register'
  post '/users' => 'users#create_new_user'

end
