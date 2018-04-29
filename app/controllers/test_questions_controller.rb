class TestQuestionsController < ApplicationController


  def index
    @questions = Question.all
    @OK = params[:OK]
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    @mark = Hash[@questions.map {|question| [question.id, "~review"]}]
    session[:selected_topics] = Hash[@questions.map {|question| [question.topic, ""]}]
    @review = params[:review]
    @submitted = params[:submitted]
    @count=0

    if params[:selected_topics] != nil
      params[:selected_topics].each do |topic,selector|
        topic = topic.to_s
        if (selector == "selected")
          session[:selected_topics][topic] = ("selected")
        end
      end
    end

    if params[:mark] != nil
      params[:mark].each do |id,marker|
        id = id.to_i
        if (marker == "marked")
          @mark[id] = ("marked")
        end
      end
    end
    if params[:answers] != nil
      params[:answers].each do |id, answer|
        id = id.to_i
        question = Question.find_by(:id => id)
        if (question.answer == answer)
          @correctness[id] = ("correct")
          @count=@count+1
        elsif (answer != "blank")
          @correctness[id] = ("wrong")
        end
        if ( @mark[id] != ("marked"))
          if (answer == "blank")
            @mark[id] = ("unanswered")
          else 
            @mark[id] = ("answered")
          end
        end
        @answers[id] = ("#{answer}")
      end
    end
  end


  def summary
    @questions = Question.all
    @count1 = params[:count]
    @answers=params[:answers]
    @total =Question.count
    #if @answers != nil
    #  @answers.each do |id, answer|
     #   id = id.to_i
     #   question = Question.find_by(:id => id)
     # end
    #end
  end



end
