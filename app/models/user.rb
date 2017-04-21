class User < ApplicationRecord
  has_many :ratings
  has_many :requests
  after_destroy :send_bye_email
  after_create :send_welcome_email

  # Include default devise modules. Others available are:
  # :timeoutable and :omniauthable
  # Todo: add this line later when email is set , :lockable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable


  def send_welcome_email
    UserMailer.welcome_email(self).deliver
  end

  def send_bye_email
    UserMailer.sorry_to_see_you_go(self).deliver
  end

  def update_accum_rating
    all_ratings = Rating.where(user_id:self.id)
    total_rating = 0
    all_ratings.each do |rating|
      total_rating+=rating.overall
    end
    avg_rating = total_rating/(all_ratings.count)

    self.update_attributes(accum_poster_rating:avg_rating)
    self.update_attributes(accum_acceptor_rating:avg_rating)
  end

end
