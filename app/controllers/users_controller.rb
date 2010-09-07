class UsersController < ApplicationController
  layout :admin_layout

  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => [:show, :edit, :update]

  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])

    if @user.signup!(params)
      @user.deliver_activation_instructions!
      flash[:notice] = "Your account has been created. Please check your e-mail for your account activation instructions!"
 #     if@user.save
  #     flash[:notice] = "Account registered!"
      redirect_back_or_default login_path
    else
      render :action => :new
    end
  end

  def show
    @user = @current_user    
  end

  def edit
    @user = @current_user    
  end

  def update
    @user = @current_user # makes our views "cleaner" and more consistent
    if @user.update_attributes(params[:user])
      flash[:notice] = "Account updated!"
      redirect_to admin_clients_path
    else
      render :action => :edit
    end
  end
end
