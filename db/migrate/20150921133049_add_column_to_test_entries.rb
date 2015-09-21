class AddColumnToTestEntries < ActiveRecord::Migration
  def change
    add_column :test_entries, :user_id, :string
  end
end
