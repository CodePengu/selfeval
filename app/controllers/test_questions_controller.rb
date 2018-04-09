class TestQuestionsController < ApplicationController

  def index
    @questions = Question.all
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    if params[:answers] != nil
      params[:answers].each do |id, answer|
        id = id.to_i
        question = Question.find_by(:id => id)
        if (question.answer == answer)
          @correctness[id] = ("correct")
        elsif (answer != "blank")
          @correctness[id] = ("wrong")
        end
        @answers[id] = ("#{answer}")
      end
    end
    
  end

end