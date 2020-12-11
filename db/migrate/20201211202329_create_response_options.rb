class CreateResponseOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :response_options do |t|
      t.string :input_type
      t.string :text
      t.references :question, null: false, foreign_key: true
      t.timestamps
    end
  end
end
