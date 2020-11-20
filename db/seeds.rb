# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

categories = Category.create!(
  [{ title: 'Ruby' }, { title: 'HTML' }, { title: 'HTTP' }, { title: 'Rails' }]
)

users = User.create!(
  [
    { login: 'Akaethon', password: 'pavel17' },
    { login: 'Pashtampt', password: 'pashtampt123' }
  ]
)

tests = Test.create!(
  [
    { title: 'Basic question about Ruby', level: 1, category_id: categories[0].id },
    { title: 'Advanced question about Ruby', level: 2, category_id: categories[0].id },
    { title: 'Basic question about HTML', level: 1, category_id: categories[1].id },
    { title: 'Advanced question about HTML', level: 2, category_id: categories[1].id },
    { title: 'Basic question about HTTP', level: 1, category_id: categories[2].id },
    { title: 'Advanced question about HTTP', level: 2, category_id: categories[2].id },
    { title: 'Basic question about Rails', level: 1, category_id: categories[3].id },
    { title: 'Advanced question about Rails', level: 2, category_id: categories[3].id }
  ]
)

questions = Question.create!(
  [
    { body: '{}?', test_id: tests[0].id },
    { body: '[]?', test_id: tests[1].id },
    { body: '<div>', test_id: tests[2].id },
    { body: '<script>', test_id: tests[3].id },
    { body: 'GET', test_id: tests[4].id },
    { body: 'POST', test_id: tests[5].id },
    { body: 'has_many', test_id: tests[6].id },
    { body: 'has_one', test_id: tests[7].id }
  ]
)

Answer.create!(
  [
    { body: 'Hash', question_id: questions[0].id, correct: true },
    { body: 'Array', question_id: questions[0].id, correct: false },
    { body: 'List', question_id: questions[0].id, correct: false },
    { body: 'String', question_id: questions[0].id, correct: false },

    { body: 'Hash', question_id: questions[1].id, correct: false },
    { body: 'Array', question_id: questions[1].id, correct: true },
    { body: 'List', question_id: questions[1].id, correct: true },
    { body: 'String', question_id: questions[1].id, correct: false },

    { body: 'Designed to select a fragment of a document in order to change the type of content', question_id: questions[2].id, correct: true },
    { body: 'intended to describe scripts, may contain a link to the program or its text in a specific language', question_id: questions[2].id, correct: false },

    { body: 'Designed to select a fragment of a document in order to change the type of content', question_id: questions[3].id, correct: false },
    { body: 'intended to describe scripts, may contain a link to the program or its text in a specific language', question_id: questions[3].id, correct: true },

    { body: 'Used to query the contents of the specified resource.', question_id: questions[4].id, correct: true },
    { body: 'Used to transfer user data to a given resource', question_id: questions[4].id, correct: false },

    { body: 'Used to query the contents of the specified resource.', question_id: questions[5].id, correct: false },
    { body: 'Used to transfer user data to a given resource', question_id: questions[5].id, correct: true },

    { body: 'This relationship shows that each instance of a model contains or has one instance of another model.', question_id: questions[6].id, correct: false },
    { body: 'This relationship indicates that each model instance has zero or more other model instances.', question_id: questions[6].id, correct: true },
    { body: 'Establishes a one-to-one connection to another model when one instance of the declaring model "belongs" to one instance of the other model.', question_id: 7, correct: false },

    { body: 'This relationship shows that each instance of a model contains or has one instance of another model.', question_id: questions[7].id, correct: true },
    { body: 'This relationship indicates that each model instance has zero or more other model instances.', question_id: questions[7].id, correct: false },
    { body: 'Establishes a one-to-one connection to another model when one instance of the declaring model "belongs" to one instance of the other model.', question_id: questions[7].id, correct: false }
  ]
)

UserTest.create!(
  [
    { user_id: users[0].id, test_id: tests[0].id },
    { user_id: users[0].id, test_id: tests[1].id },
    { user_id: users[0].id, test_id: tests[2].id },
    { user_id: users[1].id, test_id: tests[0].id },
    { user_id: users[1].id, test_id: tests[4].id },
    { user_id: users[1].id, test_id: tests[2].id }
  ]
)
