class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :body
      t.integer :kind

      t.timestamps null: false
    end
  end
end
