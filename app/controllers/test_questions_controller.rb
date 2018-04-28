class TestQuestionsController < ApplicationController


  def index
    @questions = Question.all
    @selected_topics = Hash[@questions.map {|question| [question.topic, ""]}]
    @topics = Array.new
    @Default = params[:Default]
    if params[:selected_topics] != nil
      params[:selected_topics].each do |topic,selector|
        topic = topic.to_s
        if (selector == "selected")
          @selected_topics[topic] = "selected"
        end
      end
    end
  end
  
  def test
    @questions = Question.all
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    @mark = Hash[@questions.map {|question| [question.id, "~review"]}]
    @selected_topics = params[:selected_topics]
    @Default = params[:default]
    @review = params[:review]
    @submitted = params[:submitted]
    @count=0
    
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
  end



end
