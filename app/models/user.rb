class User < ApplicationRecord
  has_many :responses

  validates :email, presence: true, uniqueness: true
end
