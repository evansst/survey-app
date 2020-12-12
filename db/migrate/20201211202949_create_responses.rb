class CreateResponses < ActiveRecord::Migration[6.0]
  def change
    create_table :responses do |t|
      t.references :survey, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.references :response_option, null: false, foreign_key: true
      t.string :text

      t.timestamps
    end
  end
end
