class TestEntry < ActiveRecord::Base
	belongs_to :test
	has_one :question
end
