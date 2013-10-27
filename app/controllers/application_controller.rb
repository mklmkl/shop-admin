class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  layout :something

  private
  def something
    if current_user
      "admin_application"
    else
      "application"
    end
  end

end
