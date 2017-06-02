class User < ApplicationRecord
  has_many :gears
  has_many :chat_rooms
  has_many :chat_messages
  has_many :reviews
  has_many :orders
  has_many :wish_lists

  # Include default devise modules. Others available are:
  #  :timeoutable
  devise :database_authenticatable, :registerable, :omniauthable, :recoverable,
    :rememberable, :trackable, :validatable, :confirmable, :lockable,
    omniauth_providers: [:facebook, :google_oauth2]


  #TODO: Commented lines will be refactored later

  # def self.from_omniauth(auth)
  #   where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
  #     user.email = auth.info.email
  #     user.password = Devise.friendly_token[0,20]
  #     user.name = auth.info.name   # assuming the user model has a name
  #     # user.image = auth.info.image # assuming the user model has an image
  #     # If you are using confirmable and the provider(s) you use validate emails,
  #     # uncomment the line below to skip the confirmation emails.
  #     # user.skip_confirmation!
  #   end
  # end
  #
  # def self.new_with_session(params, session)
  #   super.tap do |user|
  #     if data = session["devise.facebook_data"] && session["devise.facebook_data"]["extra"]["raw_info"]
  #       user.email = data["email"] if user.email.blank?
  #     end
  #   end
  # end

  #TODO: Commented lines will be refactored later

  def self.from_omniauth(auth, signed_in_resource = nil)
    user = User.where(provider: auth.provider, uid: auth.uid).first
    if user.present?
      user
    else
      # Check wether theres is already a user with the same
      # email address
      user_with_email = User.find_by_email(auth.info.email)
      if user_with_email.present?
        user = user_with_email
      else
        user = User.new
        if auth.provider == "facebook"

          user.provider = auth.provider
          user.uid = auth.uid
          # user.oauth_token = auth.credentials.token

          # user.first_name = auth.extra.raw_info.first_name
          # user.last_name = auth.extra.raw_info.last_name
          user.email = auth.extra.raw_info.email
          # Facebook's token doesn't last forever
          # user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save

        elsif auth.provider == "google_oauth2"

          user.provider = auth.provider
          user.uid = auth.uid
          # user.oauth_token = auth.credentials.token
          user.email = auth.info.email
          # user.oauth_expires_at = Time.at(auth.credentials.expires_at)
          user.save
        end
      end
    end
    return user
  end

  #TODO: Commented lines will be refactored later

  def self.new_with_session(params, session)
    if session["devise.user_attributes"]
      new(session["devise.user_attributes"]) do |user|
        user.attributes = params
        user.valid?
      end
    else
      super
    end
  end

  #TODO: Commented lines will be refactored later

  def password_required?
    #super && provider.blank?
    super && provider.present?
  end
end
