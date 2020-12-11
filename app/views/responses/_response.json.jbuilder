json.extract! response, :id, :survey_id, :question_id, :user_id, :created_at, :updated_at
json.url response_url(response, format: :json)
