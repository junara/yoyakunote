class SessionsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @item = Item.new
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id
      session[:user_uuid] = @user.uuid
      flash[:info] = "logged in as #{@user.name}"
      redirect_to root_path
    else
      flash[:danger] = 'invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
