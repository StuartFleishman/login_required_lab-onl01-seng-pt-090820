class SessionsController < ApplicationController 



  def new
  end 

  def login
    if params[:username].present?
      session[:username] = params[:username]
      @current_user = session[:username]
      redirect_to homepage_path
    else
      redirect_to login_path
    end
  end 

  def hompage
    @current_user = session[:username]
  end



 
end  