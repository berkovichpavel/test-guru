class User < ApplicationRecord
  def tests_by_level(level)
    tests.where(level: level)
  end
end
