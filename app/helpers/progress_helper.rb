module ProgressHelper
	def wrong_answer_ratio
		(current_user.wrong_answer_count.to_f/Question.all.count.to_f)*100
	end

	def correct_answer_ratio
		(current_user.correct_answer_count.to_f/Question.all.count.to_f)*100
	end
end