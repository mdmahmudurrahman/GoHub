class User < ApplicationRecord
  has_many :gears
  has_many :chat_rooms
  has_many :chat_messages
  has_many :reviews
  has_many :orders
  has_many :wish_lists

  # Include default devise modules. Others available are:
  #  :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :omniauthable, :recoverable,
    :rememberable, :trackable, :validatable, :confirmable, :lockable
end
