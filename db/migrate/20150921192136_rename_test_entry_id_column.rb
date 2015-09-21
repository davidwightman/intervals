class RenameTestEntryIdColumn < ActiveRecord::Migration
  def change
  	rename_column :questions, :test_entries_id, :test_entry_id
  end
end
