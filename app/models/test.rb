class Test < ActiveRecord::Base

	has_many :test_entries
	has_many :questions, through: :test_entries

end
