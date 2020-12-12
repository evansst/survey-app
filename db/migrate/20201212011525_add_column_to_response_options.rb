class AddColumnToResponseOptions < ActiveRecord::Migration[6.0]
  def change
    add_column :response_options, :next_question, :integer
  end
end
