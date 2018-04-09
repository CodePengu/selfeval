# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

questions = [{:content => 'What color is the sky?',
              :option1 => 'red',
              :option2 => 'green',
              :option3 => 'blue',
              :option4 => 'yellow',
              :answer => 'option3'},
             {:content => 'When is the exam?',
              :option1 => 'Monday',
              :option2 => 'Tuesday',
              :option3 => 'Wednesday',
              :option4 => 'Thursday',
              :answer => 'option4'},
             {:content => 'Who is the professor?',
              :option1 => 'Walker',
              :option2 => 'Chen',
              :option3 => 'Obama',
              :option4 => 'Trump',
              :answer => 'option1'},
            ]

questions.each do |question|
    Question.create!(question)
end