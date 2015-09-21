class TestsController < ApplicationController

	def update
		@test = Test.find(session[:user_id])
		@test.test_entries.order(:order)
    	@test.test_entries.student_answer
    	@test.test_entries.question_ids.questions.answer
	end


end