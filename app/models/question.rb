class Question < ActiveRecord::Base

	POSSIBLE_ANSWERS = ["minor 2nd", "Major 2nd", "minor 3rd", "Major 3rd"]

	def other_answers
		answer_array = []
		answer_array.push(self.answer)
		other = POSSIBLE_ANSWERS.reject do |item|
			item != self.answer
		end
		other.shuffle!
		answer_array.push(other[0..2])
		answer_array.shuffle
	end
end
