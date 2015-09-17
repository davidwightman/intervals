class TestsController < ApplicationController

	def new
		all_questions = Question.all
		@questions = []
		@possible_answers = ["Major 2nd", "Minor 2nd"]

		10.times do
			@questions.push(all_questions.sample)
		end
	end


end