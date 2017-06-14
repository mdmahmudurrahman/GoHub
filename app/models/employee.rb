class Employee < ApplicationRecord

  validates :name, length: {minimum: 3, maximum: 50},
    allow_blank: true
end
