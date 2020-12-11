class Question < ApplicationRecord
  belongs_to :survey
  has_many :response_options
  has_many :responses
end
