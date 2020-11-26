module QuestionsHelper
  def question_form_header(question)
    method = question.new_record? ? 'Create new' : 'Edit'
    "#{method} '#{question.test.title}' Question"
  end
end
