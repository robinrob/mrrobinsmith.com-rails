class AuthController < ApplicationController
  def index
  end

  def login
    email = params['user']['email']
    password = params['user']['password']

    if User.authenticate(email, password)
      ApplicationHelper.sign_in_user
    else
      ApplicationHelper.sign_out_user
    end
    redirect_to "#"
  end

  def logout
    ApplicationHelper.sign_out_user
    redirect_to "#"
  end

  def signup

  end

end
