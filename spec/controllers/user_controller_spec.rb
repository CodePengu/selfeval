require 'rails_helper'



RSpec.describe UsersController do
  
  
    let(:valid_user_attributes){
    {role: "user", email: "xien.thomas@gmail.com", password: "1234567"}
    }
    let(:valid_session) { {} }
    let(:invalid_user_attributes){
    {role: "admin", email: "xien.thomas@gmail.com", password: "1234567"}
    }
    let(:user) { FactoryGirl.create(:user, email: 'xien.thomas@gmail.com') }
    
  describe "PUT #update" do
      context "with valid params" do
          let(:new_attributes) {
            {password: "password"}
            }
        it "update user" do
           user = User.create! valid_user_attributes
            put :update, params: {id: user.to_param, user: new_attributes}, session: valid_session
            user.reload
        end
        describe "PUT #update" do
          before :each do
            @request.env['devise.mapping'] = Devise.mappings[:user]
            user_tom = FactoryGirl.create(:user, email: 'tom@test.com', password: "password123")
            sign_in user_tom
            @tom = user_tom
          end
        
          it "changes user attributes" do
            put :update, params: {id: @tom, user: attributes_for(:user, current_password: "password123")}
              
            subject.current_user.reload
            # assigns[:userF].should_not be_new_record
            expect(subject.current_user.email).to eq 'jerry@test.com'
            expect(flash[:notice]).to eq 'You updated your account successfully.'
          end
        end
                
        
        
        describe "PUT 'update'" do
          before(:each) do
            @user = FactoryGirl.create(:user)
            # @user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the confirmable module
            sign_in @user
          end
      
          describe "Success" do
      
            it "should change the user's display name" do
              @attr = { :email => @user.email, :current_password => "please123" }
              put :update, params: {id: @user, user: @attr}
              puts @user.errors.messages
              # @user.current_user.reload
              @user.password.should == @attr[:current_password]
            end
      
          end
        end
        # it 'saves and assigns new user to @user' do
        #     user = assigns(:user)
    
        #     expect(user).to be_kind_of ActiveRecord::Base
        #     expect(user).to be_persisted
        #     expect(users).not_to include user
        # end
    end
  end
end