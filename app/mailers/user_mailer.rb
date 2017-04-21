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

  def cancel_request_poster(user, request)
    @user = user
    @request = request
    mail(to: @user.email, subject: "Someone Cancelled the Request you posted")
  end

  def accept_request_poster(user, request)
    @user = user
    @request = request
    mail(to: @user.email, subject: "Someone Accepted the Request you posted!")
  end

  def accept_request_acceptor(user, request)
    @user = user
    @request = request
    mail(to: @user.email, subject: "You successfully accepted a request! Reminder")
  end

end
