class Testrecs < ApplicationRecord
  serialize :correctness, ActionController::Parameters
  serialize :answers, ActionController::Parameters #Hash
  serialize :questions, ActionController::Parameters #Hash
  serialize :mark, ActionController::Parameters
  #store :settings, accessors: [ :color, :homepage ], coder: JSON
end
