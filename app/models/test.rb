class Test < ApplicationRecord
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_many :questions
  has_many :tests_users
  has_many :users, through: :tests_users

  scope :easy, -> { where(level: 0..1) }
  scope :medium, -> { where(level: 2..4) }
  scope :difficult, -> { where(level: 5..Float::INFINITY) }
  scope :titles_by_category, ->(category) {
    joins(:category).where(categories: { title: category })
  }

  validates :title, presence: true, uniqueness: { scope: :level, message: 'within same level should be unique' }
  validates :level, numericality: { only_integer: true, greater_than_or_equal_to: 0 }


  def self.all_titles_by_category(category)
    titles_by_category(category).order(title: :desc).pluck(:title)
  end
end
