module ApplicationHelper
  @@user_signed_in = false

  def self.sign_in_user
    @@user_signed_in = true
  end

  def self.sign_out_user
    @@user_signed_in = false
  end

  def user_signed_in?
    @@user_signed_in
  end
end