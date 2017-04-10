class User < ApplicationRecord
  has_many :ratings
  has_many :requests
  after_destroy :send_bye_email
  after_create :send_welcome_email

  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  # Todo: add this line later when email is set , :confirmable, :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  def send_welcome_email
    UserMailer.welcome_email(self).deliver
  end

  def send_bye_email
    UserMailer.sorry_to_see_you_go(self).deliver
  end

end
