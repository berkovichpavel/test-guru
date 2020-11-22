class User < ApplicationRecord
  has_many :tests
  has_many :created_tests, class_name: 'Test', foreign_key: 'author_id'
  has_many :tests_users
  has_many :tests, through: :tests_users

  scope :tests_by_level, ->(level) { tests.where(level: level) }

  validates :login, :email, :password, presence: true

end
