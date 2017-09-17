class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #When methods are defined as helper_methods it allows views to use them.
  helper_method :current_user, :logged_in?

  #Methods defined in application_controller can be accessed by all controllers.
  def current_user
    #Syntx '||=' is memoization if current_user then no need to look it up.
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  def require_user
    if !logged_in?
      flash[:danger] = "You must be logged in to perform that action"
      redirect_to root_path
    end
  end
end
