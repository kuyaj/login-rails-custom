class LoginsController < ApplicationController
  before_action :authorize

  def home 
    @users = User.all
  end
end