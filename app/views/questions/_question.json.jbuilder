json.extract! question, :id, :content, :option1, :option2, :option3, :option4, :answer
json.url question_url(question, format: :json)