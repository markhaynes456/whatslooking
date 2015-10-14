class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def session_status
    output = false
    if session['active'] == 1
      output = true
    end
    output 
  end

  def logged_in?
    if session_status == false
      redirect_to(:adverts)
    end
  end

end
