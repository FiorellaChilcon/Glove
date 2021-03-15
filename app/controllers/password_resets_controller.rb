class PasswordResetsController < ApplicationController
  def new; end

  def create
    @user = User.find_by(email: params[:email])

    if @user.present?
      # send email
      PasswordMailer.with(user: @user).reset.deliver_later
      notice: "We have sent you an email to reset your password"
    else
      notice: "We haven't found an account associated with the email"
    end
     redirect_to root_path
  end
end
