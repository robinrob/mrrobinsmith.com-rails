class UsersController < ApplicationController

  def create
    email = user_params['email']
    password = user_params['password']

    params = { :email => email, :hashed_password => password }

    @user = User.new(params)
    @user.new_password = password
    @user.new_password_confirmation = password

    begin
      @user.save
      redirect_to '/face'
    rescue
      redirect_to '/signup'
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