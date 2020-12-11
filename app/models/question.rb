class Question < ApplicationRecord
  has_and_belongs_to_many :surveys
  has_many :response_options
  has_many :responses
end
