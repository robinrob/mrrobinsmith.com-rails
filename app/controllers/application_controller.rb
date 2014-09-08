class ApplicationController < ActionController::Base
  include ApplicationHelper
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # filter_parameter_logging :password

  def back
    redirect_to :back
  end

  # def user_signed_in?
  #   ApplicationHelper.user_signed_in
  # end
end