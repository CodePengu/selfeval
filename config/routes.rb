Rails.application.routes.draw do
  

  resources :test_questions
  resources :questions
  
  get 'sessions/new'
  get 'users/new'
  get 'questions/feedback'
  get 'questions/answer'
  get 'questions/:type' => 'questions#new'
  
  # get '/testquestions', to: 'test_questions#index'
  

  root to: 'visitors#index'
  devise_for :users
  resources :users
  # resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root 'users#index'
  get    '/summary',  to: 'test_questions#summary'
  # get '/about', to: 
  get    '/test',  to: 'test_questions#test'
  # resources :password_resets,     only: [:new, :create, :edit, :update] 
end
