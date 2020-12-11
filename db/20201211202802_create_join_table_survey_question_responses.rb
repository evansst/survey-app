class CreateJoinTableSurveyQuestionResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_question_responses do |t|
      t.references :surveys, foreign_key: true
      t.references :questions, foreign_key: true
      t.references :response_options, foreign_key: true
    end
  end
end
