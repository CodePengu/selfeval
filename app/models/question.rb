class Question < ApplicationRecord
  validates_presence_of :content
  validates_presence_of :option1
  validates_presence_of :option2
  validates_presence_of :option3
  validates_presence_of :option4
  validates_presence_of :answer
end