class ApplicationController < ActionController::Base
  include ApplicationHelper

  # before_filter :authenticate_admin_user!

  # after_action protect_from_forgery :with => :exception

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery :with => :exception
  # filter_parameter_logging :password

  def back
    redirect_to :back
  end


  def authenticate_admin_user!
    authenticate_user!
    unless current_user.admin?
      flash[:alert] = "This area is restricted to administrators only."
      redirect_to root_path
    end
  end

  def current_admin_user
    return nil if user_signed_in? && !current_user.admin?
    current_user
  end

end