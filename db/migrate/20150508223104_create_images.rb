class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.belongs_to :question, index: true

      t.timestamps null: false
    end
    add_foreign_key :images, :questions
  end
end
