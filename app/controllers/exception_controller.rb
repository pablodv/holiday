class ExceptionController < ApplicationController

  def edit
    @clients = Client.find(params[:id])

    @clients.notification = false

    if @clients.save
      flash[:notice] = "You're removed of a list mailer."
      redirect_to login_path
    else
      flash[:notice] = "Don't find in the list of mails"
      redirect_to login_path
    end
  end
  
end
