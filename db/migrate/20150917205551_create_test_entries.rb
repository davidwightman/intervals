class CreateTestEntries < ActiveRecord::Migration
  def change
    create_table :test_entries do |t|
      t.integer :test_id
      t.integer :question_id
      t.integer :order
      t.string :student_answer

      t.timestamps null: false
    end
  end
end
