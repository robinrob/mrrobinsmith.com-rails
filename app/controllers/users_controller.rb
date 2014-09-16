class UsersController < ApplicationController

  def new
    # if !user_signed_in?
      redirect_to '/'
    # end
  end

  def create
    email = user_params['email']
    password = user_params['password']

    params = { :email => email, :hashed_password => password }

    @user = User.new(params)
    @user.new_password = password
    @user.new_password_confirmation = password

    begin
      @user.save
      ApplicationHelper.sign_in_user
      redirect_to '/programming'
    rescue
      redirect_to '/'
    end

  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

  def resource_params
    params.require(:user).permit(:email, :password)
  end

end