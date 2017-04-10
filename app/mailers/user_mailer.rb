class UserMailer < ApplicationMailer

  default from: 'example@exmaple.com'
  layout 'mailer'

  def welcome_email(user)
    @user = user
    @sign_in_url = new_user_session_url
    mail(to: @user.email, subject: "Thanks For Singing up for UPoints")
  end

  def sorry_to_see_you_go(user)
    @user = user
    mail(to: @user.email, subject: "So Sorry to See You Go")
  end


end
