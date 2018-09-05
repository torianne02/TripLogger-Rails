class SessionsController < ApplicationController
  before_action :current_user, except: %i[new create create_oath]
  def new
    @user = User.new
    @users = User.all
  end

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to user_path(@user)
    else
      render :new, notice: 'Username, email, and/or password are incorrect.'
    end
  end

  def create_oath
    puts auth
    @user = User.find_or_create_by(uid: auth['uid']) do |u|
      u.username = auth['info']['name']
      u.email = auth['info']['email']
    end
    @user.save!(:validate => false)
    session[:user_id] = @user.id
    redirect_to user_path(@user)
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
