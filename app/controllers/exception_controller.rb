class ExceptionController < ApplicationController
  
  def index
    @clients = Client.find(params[:id])
    
    if @client
      flash[:notice] = "Your account has been activated." 
      redirect_to register_url
    else
      redirect_to login_path
    end
  end

end
