# Feature: Save/resume test porgress
#   As a user
#   I want to save and resume test on demand
#   So I can rseume the test from where i left off
feature 'Save Resume', :devise do
    id_1 = nil
    id_2 = nil
    id_3 = nil
  # Scenario: User can sign in with remember me functionality
  #   Given I exist as a user
  #   And I am signed in
  #   When I visit tets_questions page
  #   Then I should be able to save parameters
  it 'should save test session before logout' do
      user = FactoryGirl.create(:user)
      signin(user.email, user.password)
      visit test_questions_path
      answers_= ActionController::Parameters.new(id_1: "option3", id_2: "option3", id_3: "blank")
      marker_ = ActionController::Parameters.new(id_1: "marked", id_2: "marked", id_3: "marked")
      correctness_ = ActionController::Parameters.new(id_1: "correct", id_2: "wrong", id_3: "")
      @mark=marker_
      @correctness=correctness_
      @answers=answers_
      @email_id=user.email
  
      rec = Testrecs.new(email: @email_id , mark: @mark, correctness: @correctness, answers: @answers)
      rec.save
      
      rec2 = Testrecs.all
      recno=rec2.where(email: @email_id).count
      #puts recno
      expect(recno).to eq(1)
      rec2.destroy_all
      
      click_link 'Sign out'
  end

end
