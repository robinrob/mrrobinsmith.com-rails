class ApplicationController < ActionController::Base
  include ApplicationHelper
  before_action :authenticate_user!, :except => [:index, :show]

  # after_action protect_from_forgery :with => :exception

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  # filter_parameter_logging :password

  def back
    redirect_to :back
  end

end