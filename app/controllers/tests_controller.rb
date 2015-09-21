class TestsController < ApplicationController

	def new
		@user = User.find(session[:user_id])
		##creating a new test in tests with proper user id
		@test = Test.create({user_id: session[:user_id]})
		#@student_answer = @test_entry.student_answer.new
		#@answer = @test_entry.questions.answer.new

		all_questions = Question.all
		@questions = []
		10.times do |i|
			##sample chooses random questions
			question = all_questions.sample
			test_entry = @test.test_entries.new
			#sets order
			# test_entry.order = i+1
			# test_entry.question_id = question.id
		
			@questions.push(question)
		end
		@questions.each do |i|
		 TestEntry.create({test_id: @test.id, question_id: i.id})
		end
		@test.save

	end

	def show
	end
	
	def create
		@user = User.find(session[:user_id])
		
		
	end

	def update
		@test = Test.find(params[:id])
		@test_entries = @test.test_entries
		@test_entries.each_with_index do |entry, index|
			question_number = index + 1
			entry.update({student_answer: params[question_number.to_s]})
		end

	end



end