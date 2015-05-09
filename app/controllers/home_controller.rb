class HomeController < ApplicationController

  before_action :authenticate_user!, only: [:dashboard, :test, :result]

	def index
	end

	def dashboard
	end

	def test
		@question = current_user.current_question
		@answer = Answer.new
	end

	def result
		@answer = Answer.find(params[:answer_id])
		@question = @answer.question
	end

	def progress
	end
end



