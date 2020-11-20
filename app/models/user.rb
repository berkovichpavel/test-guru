class User < ApplicationRecord
  def tests_by_level(level)
    Test.joins('INNER JOIN user_tests ON user_tests.test_id = tests.id')
        .where(level: level, user_tests: { user_id: id })
  end
end
