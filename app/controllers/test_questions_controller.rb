class TestQuestionsController < ApplicationController

@@score =0

  def index
    @questions = Question.all
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @correct_answer = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    @count=0
    if params[:answers] != nil
      params[:answers].each do |id, answer|
        id = id.to_i
        question = Question.find_by(:id => id)
        if (question.answer == answer)
          @correctness[id] = ("correct")
        elsif (answer != "blank")
          @correctness[id] = ("wrong")
        end
        @correct_answer[id] =("#{question.answer}")
        @answers[id] = ("#{answer}")
        if (@correctness[id] == ("correct"))
         @count=@count+1
        end
      end
      @@score = @count
    end
    
  end


  def summary
    @questions = Question.all
    @count1 = @@score
    @total =Question.count
  end



end
