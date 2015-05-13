class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :omniauthable, :omniauth_providers => [:facebook]

	has_many :answers

	def self.from_omniauth(auth)
	  where(provider: auth.provider, uid: auth.uid).first_or_create do |user|
	    user.email = auth.info.email
	    user.password = Devise.friendly_token[0,20]
	    user.name = auth.info.name   # assuming the user model has a name
	  end
	end

	def answer_to q
		self.answers.where(question_id: q.id).first
	end

 	def current_question
 		Question.find(self.answers.count + 1)
 	end

 	def is_first_answer? a
 		if answers.first.id == a.id
 			true
 		else
 			false
 		end
 	end 	

 	def is_last_answer? a
 		if answers.last.id == a.id
 			true
 		else
 			false
 		end
 	end

 	def correct_answer_count
 		count = 0
 		answers.each do |a|
 			count = count +1 if(a.correct?)
 		end
 		count
 	end

 	def wrong_answer_count
 		count = 0
 		answers.each do |a|
 			count = count +1 if(!a.correct?)
 		end
 		count
 	end

 	def passed_answer_count
 		count = 0
 		answers.each do |a|
 			count = count +1 if(a.blank?)
 		end
 		count
 	end

end
