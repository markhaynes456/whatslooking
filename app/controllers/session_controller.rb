class SessionController < ApplicationController

  def new
     @user = User.new   
  end

  def create
    @user = session_params
    puts session_params
    if User.find_by(:name=>@user["name"],:password=>@user["password"])
      session['active'] = 1
      redirect_to(:root)
    else
      session['active'] = 0
      redirect_to(:new_session)
    end
    session['active']
  end

  def delete
    session['active'] = 0
  end

  private

  def session_params
    params.permit(:name,:password)
  end

end
