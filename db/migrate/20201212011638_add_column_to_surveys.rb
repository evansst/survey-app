class AddColumnToSurveys < ActiveRecord::Migration[6.0]
  def change
    add_column :surveys, :first_question, :integer
  end
end
