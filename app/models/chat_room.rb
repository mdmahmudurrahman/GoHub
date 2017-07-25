class ChatRoom < ApplicationRecord
  belongs_to :order
  has_many :chat_messages
end
