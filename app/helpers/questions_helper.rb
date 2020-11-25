module QuestionsHelper
  METHODS = { edit: 'Edit', new: 'Create new' }.freeze

  def question_form_header(test, method)
    "#{METHODS[method]} '#{test.title}' Question"
  end
end
