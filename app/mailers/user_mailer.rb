class UserMailer < ApplicationMailer
  default from: 'app265547433@heroku.com'

  def welcome_email
    @user = params[:user]
    mail(to: 'ecr1980@gmail.com', subject: "Welcome to Stomping Grounds!")
  end
end