class User < ApplicationRecord
  has_many :gears
  has_many :chat_rooms
  has_many :chat_messages
  has_many :reviews
  has_many :orders
  has_many :wish_lists
end
