class UserMailer < ApplicationMailer
  default from: 'notyetmadeemailaddress@zombo.com'

  def welcome_email
    @user = params[:user]
    mail(to: @user.email, subject: "Welcome to Stomping Grounds!")
  end
end