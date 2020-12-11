class CreateResponseOptions < ActiveRecord::Migration[6.0]
  def change
    create_table :response_options do |t|
      t.string :type
      t.string :text
      t.timestamps
    end
  end
end
