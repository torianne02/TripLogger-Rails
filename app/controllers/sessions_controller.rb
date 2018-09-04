class SessionsController < ApplicationController
  def new
    @user = User.new
    @users = User.all
  end

  def create
    @auth = request.env["omniauth.auth"]
    if @auth
      @user = User.from_omniauth(request.env["omniauth.auth"])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      @user = User.find_by(username: params[:username])
      if @user && @user.authenticate(params[:password])
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render '/sessions/new', notice: "Username, email, and/or password are incorrect."
      end
    end
  end

  def destroy
    session.clear
    redirect_to root_url
  end

  private

  def auth
    request.env['omniauth.auth']
  end
end
