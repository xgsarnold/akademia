class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!

  def logged_in_as_teacher?
    redirect_to :back, notice: "You do not have permission to access that page." unless current_user && current_user.person_type == "Teacher"
    rescue ActionController::RedirectBackError
    redirect_to root_path
  end
end
