# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!(
  [{ title: 'Ruby' }, { title: 'HTML' }, { title: 'HTTP' }, { title: 'Rails' }]
)

users = User.create!(
  [{ login: 'Akaethon', password: 'pavel17' }]
)

tests = Test.create!(
  [
    { title: 'Basic question about Ruby', level: 1, category_id: categories[0] },
    { title: 'Advanced question about Ruby', level: 2, category_id: categories[0] },
    { title: 'Basic question about HTML', level: 1, category_id: categories[1] },
    { title: 'Advanced question about HTML', level: 2, category_id: categories[1] },
    { title: 'Basic question about HTTP', level: 1, category_id: categories[2] },
    { title: 'Advanced question about HTTP', level: 2, category_id: categories[2] },
    { title: 'Basic question about Rails', level: 1, category_id: categories[3] },
    { title: 'Advanced question about Rails', level: 2, category_id: categories[3] }
  ]
)

questions = Question.create!(
  [
    { body: '{}?', test: tests[0] },
    { body: '[]?', test: tests[1] },
    { body: '<div>', test: tests[2] },
    { body: '<script>', test: tests[3] },
    { body: 'GET', test: tests[4] },
    { body: 'POST', test: tests[5] },
    { body: 'has_many', test: tests[3] },
    { body: 'has_one', test: tests[3] }
  ]
)

answers = Answer.create!(
  [
    { body: 'Hash', question_id: questions[0], correct: true },
    { body: 'Array', question_id: questions[0], correct: false },
    { body: 'List', question_id: questions[0], correct: false },
    { body: 'String', question_id: questions[0], correct: false },

    { body: 'Hash', question_id: questions[1], correct: false },
    { body: 'Array', question_id: questions[1], correct: true },
    { body: 'List', question_id: questions[1], correct: true },
    { body: 'String', question_id: questions[1], correct: false },

    { body: 'Designed to select a fragment of a document in order to change the type of content', question_id: questions[2], correct: true },
    { body: 'intended to describe scripts, may contain a link to the program or its text in a specific language', question_id: questions[2], correct: false },

    { body: 'Designed to select a fragment of a document in order to change the type of content', question_id: questions[3], correct: false },
    { body: 'intended to describe scripts, may contain a link to the program or its text in a specific language', question_id: questions[3], correct: true },

    { body: 'Used to query the contents of the specified resource.', question_id: questions[4], correct: true },
    { body: 'Used to transfer user data to a given resource', question_id: questions[4], correct: false },

    { body: 'Used to query the contents of the specified resource.', question_id: questions[5], correct: false },
    { body: 'Used to transfer user data to a given resource', question_id: questions[5], correct: true },

    { body: 'This relationship shows that each instance of a model contains or has one instance of another model.', question_id: questions[7], correct: false },
    { body: 'This relationship indicates that each model instance has zero or more other model instances.', question_id: questions[7], correct: true },
    { body: 'Establishes a one-to-one connection to another model when one instance of the declaring model "belongs" to one instance of the other model.', question_id: questions[7], correct: false },

    { body: 'This relationship shows that each instance of a model contains or has one instance of another model.', question_id: questions[7], correct: true },
    { body: 'This relationship indicates that each model instance has zero or more other model instances.', question_id: questions[7], correct: false },
    { body: 'Establishes a one-to-one connection to another model when one instance of the declaring model "belongs" to one instance of the other model.', question_id: questions[7], correct: false }
  ]
)

usertests = UserTest.create!(
  [{ result: nil, completed: false, user: users[0], test: tests[0] }]
)
