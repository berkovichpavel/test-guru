class Question < ApplicationRecord
  MIN_NUM_ANSWERS = 1
  MAX_NUM_ANSWERS = 4

  belongs_to :test
  has_many :answers

  validates :body, presence: true
  # validates :validate_number_of_answers

  def validate_number_of_answers
    errors.add(:question, "Can't have more than #{MAX_NUM_ANSWERS} answers") if answers.count > MAX_NUM_ANSWERS
    errors.add(:question, "Can't have less than #{MIN_NUM_ANSWERS} answers") if answers.count < MIN_NUM_ANSWERS
  end
end
