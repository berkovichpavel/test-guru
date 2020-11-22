class User < ApplicationRecord
  has_many :tests
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id'
  has_many :tests_users
  has_many :tests, through: :tests_users

  def tests_by_level(level)
    Test.joins('INNER JOIN user_tests ON user_tests.test_id = tests.id')
        .where(level: level, user_tests: { user_id: id })
  end
end
