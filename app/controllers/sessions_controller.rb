class SessionsController < ApplicationController
  def new
    # nothing to do here!
  end

  def create
    if !params[:username].nil? || !params[:username].empty?
      session[:username] = params[:username]
    end
    redirect_to '/'
  end
  
  def destroy
    session.delete :username
  end
    
end
