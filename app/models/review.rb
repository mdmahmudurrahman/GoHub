class Review < ApplicationRecord
  belongs_to :user
  belongs_to :gear

  enum target_type: [:user, :shop]
end
