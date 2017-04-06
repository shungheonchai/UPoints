class User < ApplicationRecord
  has_many :ratings
  has_many :requests

  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  # Todo: add this line later when email is set , :confirmable, :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
