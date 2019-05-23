class SessionsController < ApplicationController
  def new
    # nothing to do here!
  end

  def create
    if !params[:name].nil? || !params[:name].empty?
      session[:name] = params[:name]
    end
    redirect_to '/'
  end
  
  def destroy
    session.delete :name
  end
    
end
