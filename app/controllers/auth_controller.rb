class AuthController < ApplicationController
  def index
  end

  def login
    email = params['user']['email']
    password = params['user']['password']

    if User.authenticate(email, password)
      ApplicationHelper.sign_in_user
      redirect_to "/face"
    else
      ApplicationHelper.sign_out_user
      redirect_to "/login"
    end
  end

  def signup

  end

end
