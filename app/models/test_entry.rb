class TestEntry < ActiveRecord::Base
	belongs_to :test
	has_one :question

	def question 
		@question ||= Question.find(self.question_id)
	end
end
