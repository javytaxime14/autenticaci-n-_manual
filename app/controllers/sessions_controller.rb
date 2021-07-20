class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email].downcase)
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      redirect_to root_path, notice: 'Successfully logged in'
    else
      redirect_to action: :new, notice: 'Invalid E-mail or password'
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully'
  end
end



