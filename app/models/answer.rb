class Answer < ActiveRecord::Base
  belongs_to :question
  belongs_to :user


  def correct?
    if(question.answer == body)
      true
    else
      false
    end
  end

  def wrong?
  	if( (!blank?) && (question.answer != body))
  		true
  	else
  		false
  	end
  end

  def blank?
    if(body == "" )
      true
    else
      false
    end
  end

  def score 
  	if(correct?)
  		1
  	else
  		0
  	end
  end
  
end
