class Review < ApplicationRecord
  belongs_to :user
  # belongs_to :shop

  enum target_type: [:user, :shop]
end
