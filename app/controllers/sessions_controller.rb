class SessionsController < ApplicationController
  def login
  end    

  def register
  end

  def login_user
    user = User.find_by_email(params[:email])
    #if the user exist and the password entered is correct
    if user && user.authenticate(params[:password])
      #save the user id inside the browser cookie.
      #login in when they navigate around the browser
      session[:user_id] = user.id 
      redirect_to root_path
    else 
    #if user's login doesn't work, send them back to the login
      redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to '/login'
  end

  def create_new_user
    user = User.new(user_params)
    if user.save
      session[:user_id] = user.id 
      redirect_to '/'
    else
      redirect_to '/register'
    end
  end

  private 
  def user_params 
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

