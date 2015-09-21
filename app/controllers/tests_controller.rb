class TestsController < ApplicationController

	def new
		@user = User.find(session[:user_id])
		##creating a new test in tests with proper user id
		@test = @user.tests.new

		all_questions = Question.all
		@questions = []
		10.times do |i|
			##sample chooses random questions
			question = all_questions.sample
			test_entry = @test.test_entries.new
			#sets order
			test_entry.order = i+1
			test_entry.question_id = question.id
		
			@questions.push(question)
		end
		@test.save
	end

	def show
	end
	
	def create
		
	end

def update
		@test = Test.find(session[:user_id])
		@test.test_entries.order(:order)
    	@test.test_entries.student_answer
    	@test.test_entries.question_ids.questions.answer
	end



end