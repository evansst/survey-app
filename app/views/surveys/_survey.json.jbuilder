json.extract! survey, :id, :name, :due_date, :created_at, :updated_at
json.url survey_url(survey, format: :json)
