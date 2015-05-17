class Question < ActiveRecord::Base
	# has_many :answer
	has_many :images

	def correct_answer? a
		if(a == answer)
			true
		# elsif(a.body)
		# 	if(a.body == answer)
		# 		true
		# 	end
		else
			false
		end
	end

end
