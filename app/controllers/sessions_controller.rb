class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: session_params[:email])

    if user&.authenticate(session_params[:password])
      session[:user_id] = user_id
      redirect_to root_url, notice: 'ログインしました。'
    else
      render :new
    end
    def destroy
      reset_session
      redirect_to root_url, notice: 'ログアウトしました。'
    end
end

private

  def session_params
    params.require(:session). permit(:email, :password)
  end
end