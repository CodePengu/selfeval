class TestQuestionsController < ApplicationController


  def index
    @questions = Question.all
    @correctness = Hash[@questions.map {|question| [question.id, ""]}]
    @answers = Hash[@questions.map {|question| [question.id, "blank"]}]
    @mark = Hash[@questions.map {|question| [question.id, "~review"]}]
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

  def signoutwpause
    @mark=params[:mark]
    @correctness=params[:correctness]
    @answers=params[:answers]
    @email_id=current_user.email
    
    rec = Testrecs.new(email: @email_id , mark: @mark, correctness: @correctness, answers: @answers)
    rec.save
    redirect_to "users/sign_out", :notice => "Test saved and logged out successfully."
    # click logout (/user/sign_out)
    #recs = Testrecs.all
    #recs.each do |rec|
    #  test = object_from_yaml(rec.value)
    #  puts test
    #end
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
