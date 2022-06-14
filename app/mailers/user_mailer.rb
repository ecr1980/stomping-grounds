class UserMailer < ApplicationMailer
  default from: 'postmaster@sandboxb70307f57f694adf8b79790ad35d445d.mailgun.org'

  def welcome_email
    @user = params[:user]
    mail(to: 'ecr1980@gmail.com', subject: "Welcome to Stomping Grounds!")
  end
end