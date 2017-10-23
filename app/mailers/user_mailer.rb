class UserMailer < ApplicationMailer
  default from: 'star9xkute@gmail.com'

  def welcome_email(user)
    @user= user
    mail(to: @user.email, subject: 'Welcome to My Awesome Site')
  end

end
