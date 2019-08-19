LoginApp::Application.routes.draw do
  #the root_path  
  root to:'logins#home'

  #these routes are showing users a login, a login form, loggin them in, and logging them out.

  #this is for session controller
  get 'login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get 'logout' => 'sessions#destroy'

  #login or create new user
  #this is for users controller
  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
