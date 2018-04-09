class TestQuestionsController < ApplicationController

  def index
    @questions = Question.all
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, ""]}]
    if params[:answers] != nil
      params[:answers].each do |id, answer|
        id = id.to_i
        question = Question.find_by(:id => id)
        if answer != "blank"
          @correctness[id] = ("[#{question.answer == answer}]")
        end
        @answers[id] = answer
      end
    end
  end

end