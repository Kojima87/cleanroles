class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      # ユーザログイン後にadminページに遷移する
    else
      flash.now[:danger] = 'nameまたはpasswordが間違っています'
      render "new"
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
