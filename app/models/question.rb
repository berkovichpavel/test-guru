class Question < ApplicationRecord
  # MIN_NUM_ANSWERS = 1
  # MAX_NUM_ANSWERS = 4

  belongs_to :test
  has_many :answers

  validates :body, presence: true
  validates :validate_number_of_answers

  def validate_number_of_answers
    errors.add(:question, "Can't have more than #{4} answers") if question.answers.count > 4
    errors.add(:question, "Can't have less than #{1} answers") if question.answers.count < 1
  end
end
