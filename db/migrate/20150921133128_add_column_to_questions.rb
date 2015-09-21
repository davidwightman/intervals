class AddColumnToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :test_entries_id, :integer
  end
end
