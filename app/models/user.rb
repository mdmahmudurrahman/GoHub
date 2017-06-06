class User < ApplicationRecord
  has_many :gears
  has_many :chat_rooms
  has_many :chat_messages
  has_many :reviews
  has_many :orders
  has_many :wish_lists

  devise :database_authenticatable, :registerable, :omniauthable,
    :recoverable, :rememberable, :trackable, :validatable,
    :confirmable, :lockable, omniauth_providers: [:facebook,
    :google_oauth2]

  enum business_type: [:community, :corporate]

  class << self
    def from_omniauth(auth, signed_in_resource = nil)
      email = nil
      if auth.info
        email = auth.info.email
      elsif auth.extra
        email = auth.extra.raw_info.email
      end
      user = User.find_by(email: email) unless email.nil?
      if user.present?
        user
      else
        user = User.new
        if auth.provider == "facebook"
          user.provider = auth.provider
          user.uid = auth.uid
          user.email = auth.extra.raw_info.email
          user.save
        elsif auth.provider == "google_oauth2"
          user.provider = auth.provider
          user.uid = auth.uid
          user.email = auth.info.email
          user.save
        end
      end
      user
    end

    def new_with_session(params, session)
      if session["devise.user_attributes"]
        new(session["devise.user_attributes"]) do |user|
          user.attributes = params
          user.valid?
        end
      else
        super
      end
    end
  end

  private
  def password_required?
    super && provider.present?
  end
end
