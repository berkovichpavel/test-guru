class Answer < ApplicationRecord
  MAX_NUM_ANSWERS = 4

  belongs_to :question

  scope :correct, -> { where correct: true }

  validates :body, presence: true
  validates :correct, inclusion: { in: [true, false] }
  validate :validate_number_of_answers

  def validate_number_of_answers
    errors.add(:question, "Can't have more than #{MAX_NUM_ANSWERS} answers") if question.answers.count > MAX_NUM_ANSWERS
  end
end
