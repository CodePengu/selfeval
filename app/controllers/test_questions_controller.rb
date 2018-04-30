
class TestQuestionsController < ApplicationController
  
  def index
    @show_resume = false
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
    rec = Testrecs.all
    #puts session
    @user_id=session[:user_id]#current_user.email
    @recno=rec.where(userid: @user_id).count
    #@recno=Testrecs.first(:conditions => ["email = (?)", current_user.email])
    #@recno=rec.count
    if @recno == 0
        @show_resume = false
    else
        @show_resume = true
    end
  end
  
  def resume
    rec = Testrecs.find_by(userid: session[:user_id])
    @mark1=rec.mark
    @corr1=rec.correctness
    @ans1=rec.answers
    rec.destroy
    
    ActionController::Parameters.permit_all_parameters = true
    
    last_params = ActionController::Parameters.new(answers: @ans1, correctness: @corr1, mark: @mark1, notice: "Last saved test loaded.")
    last_params.permit!
    last_params.permitted?
    #last_params.permit(:mark,:notice)
    #puts last_params
    redirect_to test_questions_path(last_params)
    #redirect_to "/test_questions", :notice => "Last saved test loaded.", :mark => @mark1, :correctness => @corr1, :answers => @ans1
  end

  def signoutwpause
    @mark=params[:mark]
    @correctness=params[:correctness]
    @answers=params[:answers]
    @user_id=session[:user_id]#current_user.email
    
    rec = Testrecs.new(userid: @user_id , mark: @mark, correctness: @correctness, answers: @answers)
    rec.save
    #reset_session
    #reset_params
    user = current_user
    sign_out user
    redirect_to "/", :notice => "Test saved and logged out successfully."
    #redirect_to "/",:notice => "Test saved and logged out successfully." 
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
