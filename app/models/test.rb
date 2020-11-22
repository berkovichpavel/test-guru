class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users


  def self.all_titles_by_category(name)
    joins('INNER JOIN categories ON tests.category_id = categories.id')
      .where(categories: { title: name })
      .order(title: :desc)
      .pluck(:title)
  end
end
