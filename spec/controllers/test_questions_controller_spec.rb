require 'rails_helper'

describe TestQuestionsController do

  describe 'index' do
    
    question_1 = {:content => 'What color is the sky?', :option1 => 'red',
    :option2 => 'green', :option3 => 'blue', :option4 => 'yellow', :answer => 'option3'}
    question_2 = {:content => 'When is the exam?', :option1 => 'Monday',
    :option2 => 'Tuesday', :option3 => 'Wednesday', :option4 => 'Thursday',
    :answer => 'option4'}
    question_3 = {:content => 'Who is the professor?', :option1 => 'Walker',
    :option2 => 'Chen', :option3 => 'Obama', :option4 => 'Trump', :answer => 'option1'}
    
    id_1 = nil
    id_2 = nil
    id_3 = nil
    parameters = nil
    
    before :all do
      id_1 = Question.create!(question_1).id
      id_2 = Question.create!(question_2).id
      id_3 = Question.create!(question_3).id
      parameters = {"utf8"=>"✓", "answers"=>{"#{id_1}"=>"option3", "#{id_2}"=>"option3",
      "#{id_3}"=>"option1"}, "commit"=>"Submit All"}
    end
    
    after :all do
      Question.where(:content => 'What color is the sky?').destroy_all
      Question.where(:content => 'When is the exam?').destroy_all
      Question.where(:content => 'Who is the professor?').destroy_all
    end
    
    it 'should render the index template' do
      get :index, :params => parameters
      expect(response).to render_template(:index)
    end
    it 'should determine which of the answers are correct' do
      correctness = {id_1=>"[true]", id_2=>"[false]", id_3=>"[true]"}
      get :index, :params => parameters
      expect(assigns(:correctness)).to eql(correctness)
    end
    it 'should record the answers submitted by the user' do
      answers = {id_1=>"option3", id_2=>"option3", id_3=>"option1"}
      get :index, :params => parameters
      expect(assigns(:answers)).to eql(answers)
    end
  end

end