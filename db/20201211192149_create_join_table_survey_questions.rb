class CreateJoinTableSurveyQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :survey_questions do |t|
      t.references :surveys, foreign_key: true
      t.references :questions, foreign_key: true
      
    end
  end
end
